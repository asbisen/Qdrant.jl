# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""HnswConfigDiff

    QdrantHnswConfigDiff(;
        m=nothing,
        ef_construct=nothing,
        full_scan_threshold=nothing,
        max_indexing_threads=nothing,
        on_disk=nothing,
        payload_m=nothing,
    )

    - m::Int64 : Number of edges per node in the index graph. Larger the value - more accurate the search, more space required.
    - ef_construct::Int64 : Number of neighbours to consider during the index building. Larger the value - more accurate the search, more time required to build the index.
    - full_scan_threshold::Int64 : Minimal size (in kilobytes) of vectors for additional payload-based indexing. If payload chunk is smaller than &#x60;full_scan_threshold_kb&#x60; additional indexing won&#39;t be used - in this case full-scan search should be preferred by query planner and additional indexing is not required. Note: 1Kb &#x3D; 1 vector of size 256
    - max_indexing_threads::Int64 : Number of parallel threads used for background index building. If 0 - automatically select from 8 to 16. Best to keep between 8 and 16 to prevent likelihood of building broken/inefficient HNSW graphs. On small CPUs, less threads are used.
    - on_disk::Bool : Store HNSW index on disk. If set to false, the index will be stored in RAM. Default: false
    - payload_m::Int64 : Custom M param for additional payload-aware HNSW links. If not set, default M will be used.
"""
Base.@kwdef mutable struct QdrantHnswConfigDiff <: OpenAPI.APIModel
    m::Union{Nothing, Int64} = nothing
    ef_construct::Union{Nothing, Int64} = nothing
    full_scan_threshold::Union{Nothing, Int64} = nothing
    max_indexing_threads::Union{Nothing, Int64} = nothing
    on_disk::Union{Nothing, Bool} = nothing
    payload_m::Union{Nothing, Int64} = nothing

    function QdrantHnswConfigDiff(m, ef_construct, full_scan_threshold, max_indexing_threads, on_disk, payload_m, )
        OpenAPI.validate_property(QdrantHnswConfigDiff, Symbol("m"), m)
        OpenAPI.validate_property(QdrantHnswConfigDiff, Symbol("ef_construct"), ef_construct)
        OpenAPI.validate_property(QdrantHnswConfigDiff, Symbol("full_scan_threshold"), full_scan_threshold)
        OpenAPI.validate_property(QdrantHnswConfigDiff, Symbol("max_indexing_threads"), max_indexing_threads)
        OpenAPI.validate_property(QdrantHnswConfigDiff, Symbol("on_disk"), on_disk)
        OpenAPI.validate_property(QdrantHnswConfigDiff, Symbol("payload_m"), payload_m)
        return new(m, ef_construct, full_scan_threshold, max_indexing_threads, on_disk, payload_m, )
    end
end # type QdrantHnswConfigDiff

const _property_types_QdrantHnswConfigDiff = Dict{Symbol,String}(Symbol("m")=>"Int64", Symbol("ef_construct")=>"Int64", Symbol("full_scan_threshold")=>"Int64", Symbol("max_indexing_threads")=>"Int64", Symbol("on_disk")=>"Bool", Symbol("payload_m")=>"Int64", )
OpenAPI.property_type(::Type{ QdrantHnswConfigDiff }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantHnswConfigDiff[name]))}

function check_required(o::QdrantHnswConfigDiff)
    true
end

function OpenAPI.validate_property(::Type{ QdrantHnswConfigDiff }, name::Symbol, val)
    if name === Symbol("m")
        OpenAPI.validate_param(name, "QdrantHnswConfigDiff", :format, val, "uint")
    end
    if name === Symbol("m")
        OpenAPI.validate_param(name, "QdrantHnswConfigDiff", :minimum, val, 0, false)
    end
    if name === Symbol("ef_construct")
        OpenAPI.validate_param(name, "QdrantHnswConfigDiff", :format, val, "uint")
    end
    if name === Symbol("ef_construct")
        OpenAPI.validate_param(name, "QdrantHnswConfigDiff", :minimum, val, 4, false)
    end
    if name === Symbol("full_scan_threshold")
        OpenAPI.validate_param(name, "QdrantHnswConfigDiff", :format, val, "uint")
    end
    if name === Symbol("full_scan_threshold")
        OpenAPI.validate_param(name, "QdrantHnswConfigDiff", :minimum, val, 10, false)
    end
    if name === Symbol("max_indexing_threads")
        OpenAPI.validate_param(name, "QdrantHnswConfigDiff", :format, val, "uint")
    end
    if name === Symbol("max_indexing_threads")
        OpenAPI.validate_param(name, "QdrantHnswConfigDiff", :minimum, val, 0, false)
    end
    if name === Symbol("payload_m")
        OpenAPI.validate_param(name, "QdrantHnswConfigDiff", :format, val, "uint")
    end
    if name === Symbol("payload_m")
        OpenAPI.validate_param(name, "QdrantHnswConfigDiff", :minimum, val, 0, false)
    end
end
