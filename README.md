# Qdrant.jl

Julia wrapper to [Qdrant](https://qdrant.tech/) Vector Database. The code is mostly
generated using their [OpenAPI spec](https://qdrant.github.io/qdrant/redoc/index.html).

**WIP Notice:** The code is very basic and does not include any safety checks. At best it's
work in progress.

## Environment

This code is being worked against a locally running Qdrant instance in a container using the
following command `docker run -p 6333:6333 qdrant/qdrant`

This package is not registered and would need to be installed using the url to this
repository `using Pkg; Pkg.add("https://github.com/asbisen/Qdrant.jl.git")`

## Example Code

### Create a Connection

```julia
using Qdrant

conn = QdrantConnection("http://localhost:6333")
```

### Sample Workflow

```julia
# Get Existing Collections
existing_collections = get_collections(conn)

# Create a new collection
collection_name = "custom_collection"
vector_params = QdrantVectorParams(size=128, distance=QdrantDistance("Cosine"))
hnsw_conf = QdrantHnswConfig(m=32, ef_construct=200, on_disk=true)
response = create_collection(conn, collection_name;
                vectors_config=vector_params,
                hnsw_config=hnsw_conf,
                shard_number=2,
                replication_factor=2,
                on_disk_payload=true
            )

# Get Collection Info
collection_config = get_collection(conn, "custom_collection")

# Check if a collection exists
result = collection_exists(conn, collection_name)
println("Collection $collection_name exists: $result")

# Insert Vector
id      = UInt(110)
emb     = rand(Float32, 128)
payload = Dict("Name" => "John Doe", "Age" => 20)
point = Qdrant.QdrantPointStruct(id, emb, payload)

res = upsert_points(conn, collection_name, [point])

# Search for a vector
query = Qdrant.QdrantSearchRequest(rand(128), 25; score_threshold=0.2, with_vector=false)
r = search_points(conn, collection_name, query)
```
