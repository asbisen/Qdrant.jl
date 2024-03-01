# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""OptimizersConfig

    QdrantOptimizersConfig(;
        deleted_threshold=nothing,
        vacuum_min_vector_number=nothing,
        default_segment_number=nothing,
        max_segment_size=nothing,
        memmap_threshold=nothing,
        indexing_threshold=nothing,
        flush_interval_sec=nothing,
        max_optimization_threads=nothing,
    )

    - deleted_threshold::Float64 : The minimal fraction of deleted vectors in a segment, required to perform segment optimization
    - vacuum_min_vector_number::Int64 : The minimal number of vectors in a segment, required to perform segment optimization
    - default_segment_number::Int64 : Target amount of segments optimizer will try to keep. Real amount of segments may vary depending on multiple parameters: - Amount of stored points - Current write RPS  It is recommended to select default number of segments as a factor of the number of search threads, so that each segment would be handled evenly by one of the threads. If &#x60;default_segment_number &#x3D; 0&#x60;, will be automatically selected by the number of available CPUs.
    - max_segment_size::Int64 : Do not create segments larger this size (in kilobytes). Large segments might require disproportionately long indexation times, therefore it makes sense to limit the size of segments.  If indexing speed is more important - make this parameter lower. If search speed is more important - make this parameter higher. Note: 1Kb &#x3D; 1 vector of size 256 If not set, will be automatically selected considering the number of available CPUs.
    - memmap_threshold::Int64 : Maximum size (in kilobytes) of vectors to store in-memory per segment. Segments larger than this threshold will be stored as read-only memmaped file.  Memmap storage is disabled by default, to enable it, set this threshold to a reasonable value.  To disable memmap storage, set this to &#x60;0&#x60;. Internally it will use the largest threshold possible.  Note: 1Kb &#x3D; 1 vector of size 256
    - indexing_threshold::Int64 : Maximum size (in kilobytes) of vectors allowed for plain index, exceeding this threshold will enable vector indexing  Default value is 20,000, based on &lt;https://github.com/google-research/google-research/blob/master/scann/docs/algorithms.md&gt;.  To disable vector indexing, set to &#x60;0&#x60;.  Note: 1kB &#x3D; 1 vector of size 256.
    - flush_interval_sec::Int64 : Minimum interval between forced flushes.
    - max_optimization_threads::Int64 : Maximum available threads for optimization workers
"""
Base.@kwdef mutable struct QdrantOptimizersConfig <: OpenAPI.APIModel
    deleted_threshold::Union{Nothing, Float64} = nothing
    vacuum_min_vector_number::Union{Nothing, Int64} = nothing
    default_segment_number::Union{Nothing, Int64} = nothing
    max_segment_size::Union{Nothing, Int64} = nothing
    memmap_threshold::Union{Nothing, Int64} = nothing
    indexing_threshold::Union{Nothing, Int64} = nothing
    flush_interval_sec::Union{Nothing, Int64} = nothing
    max_optimization_threads::Union{Nothing, Int64} = nothing

    function QdrantOptimizersConfig(deleted_threshold, vacuum_min_vector_number, default_segment_number, max_segment_size, memmap_threshold, indexing_threshold, flush_interval_sec, max_optimization_threads, )
        OpenAPI.validate_property(QdrantOptimizersConfig, Symbol("deleted_threshold"), deleted_threshold)
        OpenAPI.validate_property(QdrantOptimizersConfig, Symbol("vacuum_min_vector_number"), vacuum_min_vector_number)
        OpenAPI.validate_property(QdrantOptimizersConfig, Symbol("default_segment_number"), default_segment_number)
        OpenAPI.validate_property(QdrantOptimizersConfig, Symbol("max_segment_size"), max_segment_size)
        OpenAPI.validate_property(QdrantOptimizersConfig, Symbol("memmap_threshold"), memmap_threshold)
        OpenAPI.validate_property(QdrantOptimizersConfig, Symbol("indexing_threshold"), indexing_threshold)
        OpenAPI.validate_property(QdrantOptimizersConfig, Symbol("flush_interval_sec"), flush_interval_sec)
        OpenAPI.validate_property(QdrantOptimizersConfig, Symbol("max_optimization_threads"), max_optimization_threads)
        return new(deleted_threshold, vacuum_min_vector_number, default_segment_number, max_segment_size, memmap_threshold, indexing_threshold, flush_interval_sec, max_optimization_threads, )
    end
end # type QdrantOptimizersConfig

const _property_types_QdrantOptimizersConfig = Dict{Symbol,String}(Symbol("deleted_threshold")=>"Float64", Symbol("vacuum_min_vector_number")=>"Int64", Symbol("default_segment_number")=>"Int64", Symbol("max_segment_size")=>"Int64", Symbol("memmap_threshold")=>"Int64", Symbol("indexing_threshold")=>"Int64", Symbol("flush_interval_sec")=>"Int64", Symbol("max_optimization_threads")=>"Int64", )
OpenAPI.property_type(::Type{ QdrantOptimizersConfig }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantOptimizersConfig[name]))}

function check_required(o::QdrantOptimizersConfig)
    o.deleted_threshold === nothing && (return false)
    o.vacuum_min_vector_number === nothing && (return false)
    o.default_segment_number === nothing && (return false)
    o.flush_interval_sec === nothing && (return false)
    o.max_optimization_threads === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantOptimizersConfig }, name::Symbol, val)
    if name === Symbol("deleted_threshold")
        OpenAPI.validate_param(name, "QdrantOptimizersConfig", :format, val, "double")
    end
    if name === Symbol("deleted_threshold")
        OpenAPI.validate_param(name, "QdrantOptimizersConfig", :maximum, val, 1, false)
        OpenAPI.validate_param(name, "QdrantOptimizersConfig", :minimum, val, 0, false)
    end
    if name === Symbol("vacuum_min_vector_number")
        OpenAPI.validate_param(name, "QdrantOptimizersConfig", :format, val, "uint")
    end
    if name === Symbol("vacuum_min_vector_number")
        OpenAPI.validate_param(name, "QdrantOptimizersConfig", :minimum, val, 100, false)
    end
    if name === Symbol("default_segment_number")
        OpenAPI.validate_param(name, "QdrantOptimizersConfig", :format, val, "uint")
    end
    if name === Symbol("default_segment_number")
        OpenAPI.validate_param(name, "QdrantOptimizersConfig", :minimum, val, 0, false)
    end
    if name === Symbol("max_segment_size")
        OpenAPI.validate_param(name, "QdrantOptimizersConfig", :format, val, "uint")
    end
    if name === Symbol("max_segment_size")
        OpenAPI.validate_param(name, "QdrantOptimizersConfig", :minimum, val, 0, false)
    end
    if name === Symbol("memmap_threshold")
        OpenAPI.validate_param(name, "QdrantOptimizersConfig", :format, val, "uint")
    end
    if name === Symbol("memmap_threshold")
        OpenAPI.validate_param(name, "QdrantOptimizersConfig", :minimum, val, 0, false)
    end
    if name === Symbol("indexing_threshold")
        OpenAPI.validate_param(name, "QdrantOptimizersConfig", :format, val, "uint")
    end
    if name === Symbol("indexing_threshold")
        OpenAPI.validate_param(name, "QdrantOptimizersConfig", :minimum, val, 0, false)
    end
    if name === Symbol("flush_interval_sec")
        OpenAPI.validate_param(name, "QdrantOptimizersConfig", :format, val, "uint64")
    end
    if name === Symbol("flush_interval_sec")
        OpenAPI.validate_param(name, "QdrantOptimizersConfig", :minimum, val, 0, false)
    end
    if name === Symbol("max_optimization_threads")
        OpenAPI.validate_param(name, "QdrantOptimizersConfig", :format, val, "uint")
    end
    if name === Symbol("max_optimization_threads")
        OpenAPI.validate_param(name, "QdrantOptimizersConfig", :minimum, val, 0, false)
    end
end