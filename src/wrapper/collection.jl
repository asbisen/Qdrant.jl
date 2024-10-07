
using JSON3
using OpenAPI
using OpenAPI.Clients: Client
using Qdrant: QdrantApi


"""
    get_collections(connection::QdrantConnection) -> Vector{String}

Retrieves a list of all collection names from the Qdrant database.

# Arguments
- `connection::QdrantConnection`: The connection to the Qdrant database.

# Returns
- `Vector{String}`: A vector containing the names of all collections.

# Throws
- `ErrorException`: If there's an error in the API response.

# Example
```julia
connection = QdrantConnection("http://localhost:6333")
collections = get_collections(connection)
```
"""
function get_collections(connection::QdrantConnection)
    collections_api = QdrantApi.CollectionsApi(connection.client)
    response, _ = QdrantApi.get_collections(collections_api)

    # Parse the JSON response
    parsed_response = JSON3.read(JSON3.write(response))

    # Check for error in the response
    if get(parsed_response, :status, "") != "ok"
        error_message = get(parsed_response, :error, "Unknown error occurred")
        throw(ErrorException("Qdrant API error: $error_message"))
    end

    # Extract collection names
    collections = get(get(parsed_response, :result, Dict()), :collections, [])
    collection_names = [get(collection, :name, "") for collection in collections]

    return collection_names
end




"""
    exists(connection::QdrantConnection, collection_name::String) -> Bool

Checks if a collection exists in the Qdrant database.

# Arguments
- `connection::QdrantConnection`: The connection to the Qdrant database.
- `collection_name::String`: The name of the collection to check.

# Returns
- `Bool`: `true` if the collection exists, `false` otherwise.

# Example
```julia
connection = QdrantConnection("http://localhost:6333")
exists = exists(connection, "my_collection")
```
"""
function collection_exists(connection::QdrantConnection, collection_name::String)
    try
        collections = get_collections(connection)
        return collection_name in collections
    catch e
        # Handle any errors from list_collections
        @warn "Error checking collection existence: $(e)"
        return false
    end
end


"""
    get_collection(connection::QdrantConnection, collection_name::String) -> Dict

Retrieves information about a specific collection from the Qdrant database.

# Arguments
- `connection::QdrantConnection`: The connection to the Qdrant database.
- `collection_name::String`: The name of the collection to retrieve information for.

# Returns
- `Dict`: A dictionary containing the collection information.

# Throws
- `ErrorException`: If there's an error in the API response or if the collection is not found.

# Example
```julia
connection = QdrantConnection("http://localhost:6333")
collection_info = get_collection(connection, "my_collection")
```
"""
function get_collection(connection::QdrantConnection, collection_name::String)
    collections_api = QdrantApi.CollectionsApi(connection.client)

    try
        response, _ = QdrantApi.get_collection(collections_api, collection_name)

        # Parse the JSON response
        parsed_response = JSON3.read(JSON3.write(response))

        # Check for error in the response
        if get(parsed_response, :status, "") != "ok"
            error_message = get(parsed_response, :error, "Unknown error occurred")
            throw(ErrorException("Qdrant API error: $error_message"))
        end

        # Extract collection info
        collection_info = get(parsed_response, :result, Dict())

        return collection_info
    catch e
        if isa(e, OpenAPI.Clients.ApiException) && e.status == 404
            throw(ErrorException("Collection '$collection_name' not found"))
        else
            rethrow(e)
        end
    end
end




"""
    delete_collection(connection::QdrantConnection, collection_name::String; timeout::Int=60) -> Bool

Deletes a collection from the Qdrant database.

# Arguments
- `connection::QdrantConnection`: The connection to the Qdrant database.
- `collection_name::String`: The name of the collection to delete.
- `timeout::Int=60`: The timeout for the delete operation in seconds.

# Returns
- `Bool`: `true` if the collection was successfully deleted, `false` otherwise.

# Example
```julia
connection = QdrantConnection("http://localhost:6333")
success = delete_collection(connection, "my_collection", timeout=30)
```
"""
function delete_collection(connection::QdrantConnection, collection_name::String; timeout::Int=60)
    collections_api = QdrantApi.CollectionsApi(connection.client)

    try
        # Attempt to delete the collection
        response, _ = QdrantApi.delete_collection(collections_api, collection_name; timeout=timeout)

        # Parse the JSON response
        parsed_response = JSON3.read(JSON3.write(response))

        # Check the status of the response
        if get(parsed_response, :status, "") == "ok"
            return true
        else
            error_message = get(parsed_response, :error, "Unknown error occurred")
            @warn "Failed to delete collection: $error_message"
            return false
        end
    catch e
        if isa(e, OpenAPI.Clients.ApiException)
            @warn "API error when deleting collection: $(e.reason)"
        else
            @warn "Unexpected error when deleting collection: $(e)"
        end
        return false
    end
end




"""
    create_collection(connection::QdrantConnection, collection_name::String, vectors_config::Qdrant.QdrantVectorParams,
        shard_number::Union{Nothing,Int}=1,
        sharding_method::Union{Nothing,Qdrant.QdrantShardingMethod}=nothing,
        replication_factor::Union{Nothing,Int}=1,
        write_consistency_factor::Union{Nothing,Int}=nothing,
        on_disk_payload::Union{Nothing,Bool}=false,
        hnsw_config::Union{Nothing,Qdrant.QdrantHnswConfig}=nothing,
        wal_config::Union{Nothing,Qdrant.QdrantWalConfigDiff}=nothing,
        optimizers_config::Union{Nothing,Qdrant.QdrantOptimizersConfigDiff}=nothing,
        init_from::Union{Nothing,Qdrant.QdrantInitFrom}=nothing,
        quantization_config::Union{Nothing,Qdrant.QdrantScalarQuantization}=nothing,
        sparse_vectors::Union{Nothing,Dict{String,Qdrant.QdrantSparseVectorParams}}=nothing
    ) -> Bool

Creates a new collection in the Qdrant database.

# Arguments
- `connection::QdrantConnection`: The connection to the Qdrant database.
- `collection_name::String`: The name of the collection to create.
- `vectors_config::Qdrant.QdrantVectorParams`: Configuration for the vector parameters.
- `shard_number::Union{Nothing,Int}=1`: Number of shards in the collection.
- `sharding_method::Union{Nothing,Qdrant.QdrantShardingMethod}=nothing`: Method of sharding.
- `replication_factor::Union{Nothing,Int}=1`: Number of replicas for each shard.
- `write_consistency_factor::Union{Nothing,Int}=nothing`: Minimal number of replicas to consider write successful.
- `on_disk_payload::Union{Nothing,Bool}=false`: Whether to store payload on disk.
- `hnsw_config::Union{Nothing,Qdrant.QdrantHnswConfig}=nothing`: Configuration for the HNSW index.
- `wal_config::Union{Nothing,Qdrant.QdrantWalConfigDiff}=nothing`: Write-Ahead-Log configuration.
- `optimizers_config::Union{Nothing,Qdrant.QdrantOptimizersConfigDiff}=nothing`: Custom params for optimizer.
- `init_from::Union{Nothing,Qdrant.QdrantInitFrom}=nothing`: Use data stored in another collection to initialize this collection.
- `quantization_config::Union{Nothing,Qdrant.QdrantScalarQuantization}=nothing`: Quantization configuration.
- `sparse_vectors::Union{Nothing,Dict{String,Qdrant.QdrantSparseVectorParams}}=nothing`: Configuration for sparse vectors.

# Returns
- `Bool`: `true` if the collection was successfully created, `false` if it already exists.

# Throws
- `ErrorException`: If there's an error in the API response.

# Example
```julia
connection = QdrantConnection("http://localhost:6333")
vectors_config = Qdrant.QdrantVectorParams(size=128, distance=Qdrant.QdrantDistance("Cosine"))
success = create_collection(connection, "my_collection", vectors_config)
```
"""
function create_collection(connection::QdrantConnection, collection_name::String, vectors_config::QdrantApi.QdrantVectorParams,
    shard_number::Union{Nothing,Int}=1,
    sharding_method::Union{Nothing,QdrantApi.QdrantShardingMethod}=nothing,
    replication_factor::Union{Nothing,Int}=1,
    write_consistency_factor::Union{Nothing,Int}=nothing,
    on_disk_payload::Union{Nothing,Bool}=false,
    hnsw_config::Union{Nothing,QdrantApi.QdrantHnswConfig}=nothing,
    wal_config::Union{Nothing,QdrantApi.QdrantWalConfigDiff}=nothing,
    optimizers_config::Union{Nothing,QdrantApi.QdrantOptimizersConfigDiff}=nothing,
    init_from::Union{Nothing,QdrantApi.QdrantInitFrom}=nothing,
    quantization_config::Union{Nothing,QdrantApi.QdrantScalarQuantization}=nothing,
    sparse_vectors::Union{Nothing,Dict{String,QdrantApi.QdrantSparseVectorParams}}=nothing
)
    collection = QdrantApi.CollectionsApi(connection.client)

    create_collection_obj = QdrantApi.QdrantCreateCollection(
        vectors_config,
        shard_number,
        sharding_method,
        replication_factor,
        write_consistency_factor,
        on_disk_payload,
        hnsw_config,
        wal_config,
        optimizers_config,
        init_from,
        quantization_config,
        sparse_vectors
    )

    try
        response, _ = QdrantApi.create_collection(collection, collection_name, qdrant_create_collection=create_collection_obj)

        # Parse the JSON response
        parsed_response = JSON3.read(JSON3.write(response))

        # Check if the status is "ok" and result is true
        if get(parsed_response, :status, "") == "ok" && get(parsed_response, :result, false) == true
            return true
        else
            # If status is not "ok", check for an error message
            status = get(parsed_response, :status, nothing)

            if status isa AbstractDict && haskey(status, :error)
                error_message = status[:error]
                throw(ErrorException("Qdrant API error: $error_message"))
            else
                throw(ErrorException("Unexpected response format from Qdrant API"))
            end
        end

    catch e
        if e isa OpenAPI.Clients.ApiException
            @warn "API error when creating collection: $(e.reason)"
        else
            @debug "Unexpected error when creating collection: $(e)"
        end
        return false
    end
end



"""
    create_collection(connection::QdrantConnection, collection_name::String;
        distance::String="Cosine",
        vector_size::Int=768,
        hnsw_on_disk::Bool=false,
        memmap_threshold::Int=20000,
        scalar_quantization_type::String="int8",
        quantization_config_always_ram::Bool=true)

Creates a new collection in the Qdrant database with specified parameters.

# Arguments
- `connection::QdrantConnection`: The connection to the Qdrant database.
- `collection_name::String`: The name of the collection to create.
- `distance::String="Cosine"`: The distance metric to use. Must be one of "Euclid", "Cosine", "Dot", or "Manhattan".
- `vector_size::Int=768`: The size of the vectors in the collection.
- `hnsw_on_disk::Bool=false`: Whether to store HNSW index on disk.
- `memmap_threshold::Int=20000`: The threshold for memory mapping.
- `scalar_quantization_type::String="int8"`: The type of scalar quantization to use. (Should always be "int8" for now.)
- `quantization_config_always_ram::Bool=true`: Whether to always keep quantization data in RAM.

# Returns
- The result of the `create_collection` function call.

# Throws
- `ArgumentError`: If an invalid distance metric is provided.

# Example
```julia
connection = QdrantConnection("http://localhost:6333")
create_collection(connection, "my_collection", distance="Euclid", vector_size=512)
```
"""
function create_collection(connection::QdrantConnection, collection_name::String;
    distance::String="Cosine",
    vector_size::Int=768,
    hnsw_on_disk::Bool=false,
    memmap_threshold::Int=20000,
    scalar_quantization_type::String="int8",
    quantization_config_always_ram::Bool=true)

    # Check if distance is valid
    valid_distances = ["Euclid", "Cosine", "Dot", "Manhattan"]
    if !(distance in valid_distances)
        throw(ArgumentError("Invalid distance: $distance. Must be one of $valid_distances"))
    end

    distance = QdrantApi.QdrantDistance(distance)
    vectors_config = QdrantApi.QdrantVectorParams(size=vector_size, distance=distance)
    optimizer_config = QdrantApi.QdrantOptimizersConfigDiff(memmap_threshold=memmap_threshold)
    scalar = QdrantApi.QdrantScalarQuantizationConfig(type=scalar_quantization_type, always_ram=quantization_config_always_ram)
    quantization_config = QdrantApi.QdrantScalarQuantization(scalar=scalar)
    hnsw_config = QdrantApi.QdrantHnswConfig(on_disk=hnsw_on_disk)

    create_collection(connection, collection_name, vectors_config,
        1, nothing, # shard
        nothing, # replication_factor
        nothing, # write_consistency_factor
        nothing, # on_disk_payload
        hnsw_config,
        nothing, # wal_config
        optimizer_config,
        nothing, # init_from
        quantization_config,
        nothing # sparse_vectors
    )
end
