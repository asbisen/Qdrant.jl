using PromptingTools
using Qdrant
using OpenAPI.Clients: Client
using JSON3
using UUIDs

include("create_collection_utility.jl") # defines create_collection_utility function 

""" Utility Function to chunk data into smaller pieces """
function chunk_data(data::String, chunk_size::Int) 
    [data[i:min(i+chunk_size-1,end)] for i in 1:chunk_size:length(data)]
end


""" Utility Function to generate deterministic UUIDs from strings """
function uuid_from_str(str::String)
    oid = UUIDs.namespace_oid
    uuid5(oid, str) |> string
end


# download 1984.txt if it does not exist
isfile("1984.txt") || download("https://gutenberg.net.au/ebooks01/0100021.txt", "1984.txt")
load_data(fname::String) = read(fname, String)



#
# main block
#

#%% Data Preperation
data = load_data("1984.txt")
chunked_data = chunk_data(data, 128)

# Initialize PromptingTools to use Ollama
# and generate embeddings using the lightweight
# model 'phi'
schema = PromptingTools.OllamaSchema()
embeddings = []
for chunk in chunked_data
    r = aiembed(schema, chunk, model="phi")
    push!(embeddings, r.content)
end

# Generate UUIDs
uuids = [uuid_from_str(chunk) for chunk in chunked_data]





#%% Setup Qdrant Collection
conn = Client("http://localhost:6333")
vector_size = length(embeddings[1]) # all embeddings should have same size
collection_name = "NineTeenEightyFour"

collections, _ = Qdrant.get_collections(CollectionsApi(conn))
if collection_name in getfield.(collections.result.collections, :name)
    println("Collection already exists. Deleting the collection ($collection_name).")
    delete_collection(CollectionsApi(conn), collection_name)
end
    println("Creating collection ($collection_name).")
    create_collection_utility(conn, collection_name; vector_size=vector_size) # from qdrant_vectors.jl






#%% Insert Data
@time for (id, vec, chunk) in zip(uuids, embeddings, chunked_data)
    point = QdrantPointStruct(id, vec, Dict("content" => chunk))
    point_list = QdrantPointsList(points=[point])

    r = upsert_points(PointsApi(conn), 
                        collection_name, 
                        qdrant_point_insert_operations = QdrantPointInsertOperations(point_list))
    print(".")
end






#%% Search -> Output are the top-k chunks Vector{QdrantScoredPoint}
query = "What was Winston's job?"
query_vector = aiembed(schema, query, model="phi").content
search_request = QdrantSearchRequest(vector=query_vector, limit=8, with_payload=true)
r = search_points(PointsApi(conn), collection_name, qdrant_search_request=search_request)

println("Top Results")
result = get.(getfield.(r[1].result, :payload), "content", "")
for i in result
    println("\n-----\n$i\n-----\n")
end
