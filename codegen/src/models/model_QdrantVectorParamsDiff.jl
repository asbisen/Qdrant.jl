# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""VectorParamsDiff

    QdrantVectorParamsDiff(;
        hnsw_config=nothing,
        quantization_config=nothing,
        on_disk=nothing,
    )

    - hnsw_config::QdrantHnswConfigDiff
    - quantization_config::QdrantQuantizationConfigDiff
    - on_disk::Bool : If true, vectors are served from disk, improving RAM usage at the cost of latency
"""
Base.@kwdef mutable struct QdrantVectorParamsDiff <: OpenAPI.APIModel
    hnsw_config = nothing # spec type: Union{ Nothing, QdrantHnswConfigDiff }
    quantization_config = nothing # spec type: Union{ Nothing, QdrantQuantizationConfigDiff }
    on_disk::Union{Nothing, Bool} = nothing

    function QdrantVectorParamsDiff(hnsw_config, quantization_config, on_disk, )
        OpenAPI.validate_property(QdrantVectorParamsDiff, Symbol("hnsw_config"), hnsw_config)
        OpenAPI.validate_property(QdrantVectorParamsDiff, Symbol("quantization_config"), quantization_config)
        OpenAPI.validate_property(QdrantVectorParamsDiff, Symbol("on_disk"), on_disk)
        return new(hnsw_config, quantization_config, on_disk, )
    end
end # type QdrantVectorParamsDiff

const _property_types_QdrantVectorParamsDiff = Dict{Symbol,String}(Symbol("hnsw_config")=>"QdrantHnswConfigDiff", Symbol("quantization_config")=>"QdrantQuantizationConfigDiff", Symbol("on_disk")=>"Bool", )
OpenAPI.property_type(::Type{ QdrantVectorParamsDiff }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantVectorParamsDiff[name]))}

function check_required(o::QdrantVectorParamsDiff)
    true
end

function OpenAPI.validate_property(::Type{ QdrantVectorParamsDiff }, name::Symbol, val)
end
