
using JSON3
using OpenAPI
using OpenAPI.Clients: Client
using Qdrant


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
    collections_api = QdrantRestApi.CollectionsApi(connection.client)
    response, _ = QdrantRestApi.get_collections(collections_api)

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
    collections_api = QdrantRestApi.CollectionsApi(connection.client)

    try
        response, _ = QdrantRestApi.get_collection(collections_api, collection_name)

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
    collections_api = QdrantRestApi.CollectionsApi(connection.client)

    try
        # Attempt to delete the collection
        response, _ = QdrantRestApi.delete_collection(collections_api, collection_name; timeout=timeout)

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
    create_collection(connection::QdrantConnection, collection_name::String; kwargs...)

Create a new collection in Qdrant with configurable parameters.

# Arguments
- `connection::QdrantConnection`: The connection to Qdrant.
- `collection_name::String`: The name of the collection to create.
- `vectors_config::QdrantRestApi.QdrantVectorParams=QdrantVectorParams()`: Configuration for vectors in the collection. Defaults to a `QdrantVectorParams` object with:
  - `size`: 768
  - `distance`: "Dot" (can be one of "Cosine", "Manhattan", "Euclid", "Dot")
  - `hnsw_config`: `nothing`
  - `quantization_config`: `nothing`
  - `on_disk`: `false`
  - `datatype`: `nothing`
  - `multivector_config`: `nothing`
- `shard_number::Int=1`: The number of shards for the collection. Default is 1.
- `sharding_method::QdrantRestApi.QdrantShardingMethod=QdrantShardingMethod()`: Method for shard distribution. Defaults to "auto" (can be "auto", "custom").
- `replication_factor::Int=1`: The number of replicas each shard will have. Default is 1, meaning no replication.
- `write_consistency_factor::Union{Nothing,Int}=nothing`: Level of write consistency. `nothing` allows default behavior.
- `on_disk_payload::Union{Nothing,Bool}=false`: Whether payload should be on disk (`true`) or in memory (`false`). Default is `false`.
- `hnsw_config::QdrantRestApi.QdrantHnswConfig=QdrantHnswConfig()`: Configuration for the HNSW index. Defaults to a `QdrantHnswConfig` object with:
  - `on_disk`: `false`
  - `m`: 16
  - `ef_construct`: 100
  - `full_scan_threshold`: 10000
  - `max_indexing_threads`: 0 (automatic selection)
  - `payload_m`: `nothing`
- `wal_config::QdrantRestApi.QdrantWalConfigDiff=QdrantWalConfigDiff()`: Write-Ahead Log configuration. Default values:
  - `wal_capacity_mb`: `nothing`
  - `wal_segments_ahead`: `nothing`
- `optimizers_config::QdrantRestApi.QdrantOptimizersConfig=QdrantOptimizersConfig()`: Optimizers configuration with default settings:
  - `deleted_threshold`: `nothing`
  - `vacuum_min_vector_number`: `nothing`
  - `default_segment_number`: `nothing`
  - `max_segment_size`: `nothing`
  - `memmap_threshold`: `nothing`
  - `indexing_threshold`: `nothing`
  - `flush_interval_sec`: `nothing`
  - `max_optimization_threads`: `nothing`
- `init_from::Union{Nothing,String}=nothing`: Option to initialize from an existing collection. Default is `nothing`, indicating a fresh start.
- `quantization_config::Union{Nothing,QdrantRestApi.QdrantScalarQuantization}=QdrantScalarQuantization()`: Scalar quantization settings. Default is `none`.
- `sparse_vectors::Union{Nothing,Dict{String,QdrantRestApi.QdrantSparseVectorParams}}=nothing`: Sparse vector parameters are optional and default to `nothing`.

# Returns
A named tuple containing:
- `time::Float64`: The elapsed time for the operation.
- `status::Union{String,Dict{String,String}}`: Operation status, either a success message or an error message.
- `result::Union{Bool,Nothing}`: True if successful, `nothing` if an error occurred.

# Throws
- `Exception`: Raised if unforeseen errors occur during the API call.

# Usage Example
```julia
# Create a QdrantConnection
connection = QdrantConnection("your_qdrant_url", "your_api_key")

# Default collection creation
response = create_collection(connection, "default_collection")
println(response)

# Collection with custom vector configuration and HNSW settings
vector_params = QdrantVectorParams(size=128, distance=QdrantDistance("Cosine"))
hnsw_conf = QdrantHnswConfig(m=32, ef_construct=200, on_disk=true)
response = create_collection(connection, "custom_collection";
    vectors_config=vector_params,
    hnsw_config=hnsw_conf,
    shard_number=2,
    replication_factor=2,
    on_disk_payload=true
)
println(response)

# Collection using custom quantization
quant_config = QdrantScalarQuantizationConfig(type="uint8", quantile=0.8)
response = create_collection(connection, "quantized_collection";
    quantization_config=QdrantScalarQuantization(quant_config)
)
println(response)
```
"""
function create_collection(connection::QdrantConnection, collection_name::String;
    vectors_config::QdrantRestApi.QdrantVectorParams=QdrantVectorParams(),
    shard_number::Int=1,
    sharding_method::QdrantRestApi.QdrantShardingMethod=QdrantShardingMethod(),
    replication_factor::Int=1,
    write_consistency_factor::Union{Nothing,Int}=nothing,
    on_disk_payload::Union{Nothing,Bool}=false,
    hnsw_config::QdrantRestApi.QdrantHnswConfig=QdrantHnswConfig(),
    wal_config::QdrantRestApi.QdrantWalConfigDiff=QdrantWalConfigDiff(),
    optimizers_config::QdrantRestApi.QdrantOptimizersConfig=QdrantOptimizersConfig(),
    init_from::Union{Nothing,QdrantRestApi.QdrantInitFrom}=nothing,
    quantization_config::Union{Nothing,QdrantRestApi.QdrantScalarQuantization}=QdrantScalarQuantization(),
    sparse_vectors::Union{Nothing,Dict{String,QdrantRestApi.QdrantSparseVectorParams}}=nothing)

    create_collection_obj = QdrantRestApi.QdrantCreateCollection(
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

    api = QdrantRestApi.CollectionsApi(connection.client)

    try
        response, http_response = QdrantRestApi.create_collection(api, collection_name, qdrant_create_collection=create_collection_obj)

        # Parse the response based on its type
        if isa(response, QdrantRestApi.QdrantCreateShardKey200Response)
            return (time=response.time, status=response.status, result=response.result)
        elseif isa(response, QdrantRestApi.QdrantErrorResponse)
            return (time=response.time, status=Dict("error" => response.status.error), result=nothing)
        else
            error("Unexpected response type: $(typeof(response))")
        end
    catch e
        @error "Failed to create collection" exception = (e, catch_backtrace())
        rethrow(e)
    end
end
