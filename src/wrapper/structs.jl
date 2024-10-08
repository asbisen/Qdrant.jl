"""
    QdrantHnswConfig(; on_disk::Bool=false, m::Union{Nothing,Int}=nothing, ef_construct::Union{Nothing,Int}=nothing, full_scan_threshold::Union{Nothing,Int}=nothing, max_indexing_threads::Union{Nothing,Int}=nothing, payload_m::Union{Nothing,Int}=nothing)

Create a configuration for the HNSW (Hierarchical Navigable Small World) index in Qdrant.

# Arguments
- `on_disk::Bool=false`: If true, store HNSW index on disk; if false, store in RAM.
- `m::Union{Nothing,Int}=nothing`: Number of edges per node in the index graph. Larger values increase search accuracy but require more space.
- `ef_construct::Union{Nothing,Int}=nothing`: Number of neighbours to consider during index building. Larger values increase search accuracy but require more time to build the index.
- `full_scan_threshold::Union{Nothing,Int}=nothing`: Minimal size (in KiloBytes) of vectors for additional payload-based indexing. If payload chunk is smaller, full-scan search is preferred.
- `max_indexing_threads::Union{Nothing,Int}=nothing`: Number of parallel threads for background index building. 0 means automatic selection. Best kept between 8 and 16.
- `payload_m::Union{Nothing,Int}=nothing`: Custom M parameter for HNSW graph built for payload index. If not set, default M will be used.

# Returns
A `QdrantHnswConfig` object with the specified configuration.
"""
function QdrantHnswConfig(; on_disk::Bool=false,
    m::Union{Nothing,Int}=16,
    ef_construct::Union{Nothing,Int}=100,
    full_scan_threshold::Union{Nothing,Int}=10000,
    max_indexing_threads::Union{Nothing,Int}=0,
    payload_m::Union{Nothing,Int}=nothing)

    return QdrantRestApi.QdrantHnswConfig(on_disk=on_disk,
        m=m,
        ef_construct=ef_construct,
        full_scan_threshold=full_scan_threshold,
        max_indexing_threads=max_indexing_threads,
        payload_m=payload_m)
end



"""
    QdrantScalarQuantizationConfig(; type::String="int8", quantile::Union{Nothing, Float64}=0.7, always_ram::Bool=false)

Create a configuration for scalar quantization in Qdrant.

# Arguments
- `type::String="int8"`: The type of scalar quantization. Default is "int8".
- `quantile::Union{Nothing, Float64}=0.7`: The quantile value for quantization. Must be between 0.5 and 1.0 if provided. Default is 0.7.
- `always_ram::Bool=false`: Whether to always keep quantization data in RAM. Default is false.

# Returns
A `QdrantScalarQuantizationConfig` object with the specified configuration.

# Throws
- `ArgumentError`: If the provided quantile is not between 0.5 and 1.0.

# Example
```julia
config = QdrantScalarQuantizationConfig(type="int8", quantile=0.8, always_ram=true)
```
"""
function QdrantScalarQuantizationConfig(; type::String="int8", quantile::Union{Nothing,Float64}=0.7, always_ram::Bool=false)
    if quantile !== nothing && (quantile < 0.5 || quantile > 1.0)
        throw(ArgumentError("quantile must be between 0.5 and 1.0"))
    end

    return QdrantRestApi.QdrantScalarQuantizationConfig(type=type, quantile=quantile, always_ram=always_ram)
end



"""
    QdrantScalarQuantization(; scalar=QdrantScalarQuantizationConfig())

Configure scalar quantization in Qdrant using a provided scalar quantization configuration object.

# Arguments
- `scalar=QdrantScalarQuantizationConfig()`: A configuration object for scalar quantization. By default, it uses the default settings of `QdrantScalarQuantizationConfig`, which includes `type="int8"`, `quantile=0.7`, and `always_ram=false`.

# Returns
A `QdrantScalarQuantization` object configured with the specified scalar quantization settings.

# Example
```julia
quantization = QdrantScalarQuantization(scalar=QdrantScalarQuantizationConfig(type="int8", quantile=0.8, always_ram=true))
```
"""
function QdrantScalarQuantization(; scalar=QdrantScalarQuantizationConfig())
    return QdrantRestApi.QdrantScalarQuantization(scalar=scalar)
end




"""
    QdrantDistance(s::AbstractString="Dot")

Configure the distance metric for vector operations in Qdrant.

# Arguments
- `s::AbstractString="Dot"`: The distance metric to use. Options include "Cosine", "Manhattan", "Euclid", and "Dot". Default is "Dot".

# Returns
A `QdrantDistance` object with the specified distance metric.

# Throws
- `ArgumentError`: If an invalid distance metric is provided.

# Example
```julia
# Create a QdrantDistance with default Dot distance
default_distance = QdrantDistance()

# Create a QdrantDistance with Cosine distance
cosine_distance = QdrantDistance(s="Cosine")
```
"""
function QdrantDistance(s::AbstractString="Dot")
    valid_distances = ["Cosine", "Manhattan", "Euclid", "Dot"]
    if !(s in valid_distances)
        throw(ArgumentError("Invalid distance type. Must be one of: $(join(valid_distances, ", "))"))
    end
    return QdrantRestApi.QdrantDistance(s)
end



"""
    QdrantVectorParams(; size::Int=768, distance::QdrantRestApi.QdrantDistance=QdrantDistance(),
                        hnsw_config::Union{Nothing,QdrantRestApi.QdrantHnswConfig}=nothing,
                        quantization_config::Union{Nothing,QdrantRestApi.QdrantScalarQuantizationConfig}=nothing,
                        on_disk::Bool=false,
                        datatype::Union{Nothing,QdrantRestApi.QdrantDatatype}=nothing,
                        multivector_config::Union{Nothing,QdrantMultiVectorConfig}=nothing)

Create a configuration for vector parameters in Qdrant.

# Arguments
- `size::Int=768`: The size of the vectors. Default is 768.
- `distance::QdrantRestApi.QdrantDistance=QdrantDistance()`: The distance metric to use for vectors. Default is "Dot".
- `hnsw_config::Union{Nothing,QdrantRestApi.QdrantHnswConfig}=nothing`: HNSW configuration for the vector index. Default is `nothing`, which uses default settings.
- `quantization_config::Union{Nothing,QdrantRestApi.QdrantScalarQuantizationConfig}=nothing`: Configuration for scalar quantization. Default is `nothing`.
- `on_disk::Bool=false`: Whether to store vectors on disk. Default is `false`, meaning vectors are stored in memory.
- `datatype::Union{Nothing,QdrantRestApi.QdrantDatatype}=nothing`: The datatype for storing vectors. Default is `nothing`.
- `multivector_config::Union{Nothing,QdrantMultiVectorConfig}=nothing`: Configuration for multi-vector parameters. Default is `nothing`.

# Returns
A `QdrantVectorParams` object with the specified configuration.
"""
function QdrantVectorParams(; size::Int=768,
    distance::QdrantRestApi.QdrantDistance=QdrantDistance(),
    hnsw_config::Union{Nothing,QdrantRestApi.QdrantHnswConfig}=nothing,
    quantization_config::Union{Nothing,QdrantRestApi.QdrantScalarQuantizationConfig}=nothing,
    on_disk::Bool=false,
    datatype::Union{Nothing,QdrantRestApi.QdrantDatatype}=nothing,
    multivector_config::Union{Nothing,QdrantMultiVectorConfig}=nothing
)

    return QdrantRestApi.QdrantVectorParams(size=size,
        distance=distance,
        hnsw_config=hnsw_config,
        quantization_config=quantization_config,
        on_disk=on_disk,
        datatype=datatype,
        multivector_config=multivector_config)

end



"""
    QdrantInitFrom(; collection::Union{Nothing,String}=nothing)

Initialize a Qdrant collection from an existing collection.

# Arguments
- `collection::Union{Nothing,String}=nothing`: The name of the existing collection to initialize from. Default is `nothing`.

# Returns
A `QdrantInitFrom` object configured with the specified collection.

# Example
```julia
init_config = QdrantInitFrom(collection="my_existing_collection")
```
"""
function QdrantInitFrom(; collection::Union{Nothing,String}=nothing)
    return QdrantRestApi.QdrantInitFrom(collection=collection)
end



"""
    QdrantWalConfig(;
        wal_capacity_mb=nothing,
        wal_segments_ahead=nothing,
    )

Configuration for Write-Ahead Log (WAL) in Qdrant.

# Arguments
- `wal_capacity_mb::Union{Int64, Nothing}`: Size of a single WAL segment in megabytes (MB). If not specified, the default value will be used.
- `wal_segments_ahead::Union{Int64, Nothing}`: Number of WAL segments to create ahead of actually used ones. If not specified, the default value will be used.

# Returns
A `QdrantWalConfig` object with the specified WAL configuration.

# Examples
```julia
# Create a WAL configuration with custom values
wal_config = QdrantWalConfig(wal_capacity_mb=100, wal_segments_ahead=2)

# Create a WAL configuration with default values
default_wal_config = QdrantWalConfig()
```
"""
function QdrantWalConfig(; wal_capacity_mb::Union{Nothing,Int}=nothing, wal_segments_ahead::Union{Nothing,Int}=nothing)
    return QdrantRestApi.QdrantWalConfig(wal_capacity_mb=wal_capacity_mb, wal_segments_ahead=wal_segments_ahead)
end


function QdrantWalConfigDiff(; wal_capacity_mb::Union{Nothing,Int}=nothing, wal_segments_ahead::Union{Nothing,Int}=nothing)
    return QdrantRestApi.QdrantWalConfigDiff(wal_capacity_mb=wal_capacity_mb, wal_segments_ahead=wal_segments_ahead)
end



"""
    QdrantDatatype(; datatype::Union{Nothing,String}="float32")

Defines which datatype should be used to represent vectors in the storage. Choosing different datatypes allows to optimize memory usage and performance vs accuracy.

# Arguments
- `datatype::Union{Nothing,String}="float32"`: The datatype to use. Must be one of "float32", "uint8", or "float16".
  - For float32 datatype: vectors are stored as single-precision floating point numbers, 4 bytes.
  - For float16 datatype: vectors are stored as half-precision floating point numbers, 2 bytes.
  - For uint8 datatype: vectors are stored as unsigned 8-bit integers, 1 byte. It expects vector elements to be in range [0, 255].

# Returns
A `QdrantDatatype` object with the specified datatype.

# Throws
- `ArgumentError`: If an invalid datatype is provided.

# Examples
```julia
# Create a QdrantDatatype with default float32 type
default_type = QdrantDatatype()

# Create a QdrantDatatype with uint8 type
uint8_type = QdrantDatatype(datatype="uint8")
```
"""
function QdrantDatatype(; datatype::Union{Nothing,String}="float32")
    valid_types = ["float32", "uint8", "float16"]
    if !(datatype in valid_types)
        throw(ArgumentError("Invalid type. Must be one of: $(join(valid_types, ", "))"))
    end
    return QdrantRestApi.QdrantDatatype(datatype)
end




"""
    QdrantOptimizersConfig(;
        deleted_threshold::Union{Nothing,Float64}=nothing,
        vacuum_min_vector_number::Union{Nothing,Int}=nothing,
        default_segment_number::Union{Nothing,Int}=nothing,
        max_segment_size::Union{Nothing,Int}=nothing,
        memmap_threshold::Union{Nothing,Int}=nothing,
        indexing_threshold::Union{Nothing,Int}=nothing,
        flush_interval_sec::Union{Nothing,Int}=nothing,
        max_optimization_threads::Union{Nothing,Int}=nothing
    )

Create a configuration for the Optimizers in Qdrant.

# Arguments
- `deleted_threshold::Union{Nothing,Float64}=nothing`: The minimal fraction of deleted vectors in a segment, required to perform segment optimization.
- `vacuum_min_vector_number::Union{Nothing,Int}=nothing`: The minimal number of vectors in a segment, required to perform segment optimization.
- `default_segment_number::Union{Nothing,Int}=nothing`: Target amount of segments optimizer will try to keep.
- `max_segment_size::Union{Nothing,Int}=nothing`: Maximum size of a segment in kilobytes.
- `memmap_threshold::Union{Nothing,Int}=nothing`: Maximum size in kilobytes of vectors to store in-memory per segment.
- `indexing_threshold::Union{Nothing,Int}=nothing`: Maximum size in kilobytes of vectors allowed for plain index.
- `flush_interval_sec::Union{Nothing,Int}=nothing`: Interval between forced flushes in seconds.
- `max_optimization_threads::Union{Nothing,Int}=nothing`: Maximum number of threads for running optimizations per shard.

# Returns
A `QdrantOptimizersConfig` object with the specified configuration.

# Example
```julia
config = QdrantOptimizersConfig(
    deleted_threshold=0.2,
    vacuum_min_vector_number=1000,
    default_segment_number=5,
    max_segment_size=100000,
    memmap_threshold=500000,
    indexing_threshold=20000,
    flush_interval_sec=5,
    max_optimization_threads=4
)
```
"""
function QdrantOptimizersConfig(;
    deleted_threshold::Union{Nothing,Float64}=nothing,
    vacuum_min_vector_number::Union{Nothing,Int}=nothing,
    default_segment_number::Union{Nothing,Int}=nothing,
    max_segment_size::Union{Nothing,Int}=nothing,
    memmap_threshold::Union{Nothing,Int}=nothing,
    indexing_threshold::Union{Nothing,Int}=nothing,
    flush_interval_sec::Union{Nothing,Int}=nothing,
    max_optimization_threads::Union{Nothing,Int}=nothing
)
    return QdrantRestApi.QdrantOptimizersConfig(
        deleted_threshold=deleted_threshold,
        vacuum_min_vector_number=vacuum_min_vector_number,
        default_segment_number=default_segment_number,
        max_segment_size=max_segment_size,
        memmap_threshold=memmap_threshold,
        indexing_threshold=indexing_threshold,
        flush_interval_sec=flush_interval_sec,
        max_optimization_threads=max_optimization_threads
    )
end


"""
    QdrantShardingMethod(; method::String="auto")

Create a configuration for the sharding method in Qdrant.

# Arguments
- `method::String="auto"`: The sharding method to use. Must be either "auto" or "custom".
  - "auto": Points are distributed across all available shards automatically.
  - "custom": Points are distributed across shards according to a shard key.

# Returns
A `QdrantShardingMethod` object with the specified configuration.

# Throws
- `ArgumentError`: If an invalid sharding method is provided.

# Example
```julia
# Create a QdrantShardingMethod with default auto method
default_method = QdrantShardingMethod()

# Create a QdrantShardingMethod with custom method
custom_method = QdrantShardingMethod(method="custom")
```
"""
function QdrantShardingMethod(; method::String="auto")
    valid_methods = ["auto", "custom"]
    if !(method in valid_methods)
        throw(ArgumentError("Invalid sharding method. Must be one of: $(join(valid_methods, ", "))"))
    end
    return QdrantRestApi.QdrantShardingMethod(method)
end




function QdrantPointStruct(id::Union{UInt,String}, vector::Any, payload=Any)
    return QdrantRestApi.QdrantPointStruct(id=id, vector=vector, payload=payload)
end

function QdrantPointsList(points::Vector{QdrantPointStruct}; shard_key::QdrantRestApi.QdrantShardKeySelector=QdrantShardKeySelector())
    return QdrantRestApi.QdrantPointsList(points=points, shard_key=shard_key)
end

function QdrantShardKeySelector(; value::Union{Nothing,String}=nothing)
    return QdrantRestApi.QdrantShardKeySelector(value=value)
end
