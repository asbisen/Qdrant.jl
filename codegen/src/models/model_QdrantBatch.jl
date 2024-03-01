# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""Batch

    QdrantBatch(;
        ids=nothing,
        vectors=nothing,
        payloads=nothing,
    )

    - ids::Vector{QdrantExtendedPointId}
    - vectors::QdrantBatchVectorStruct
    - payloads::Vector{QdrantBatchPayloadsInner}
"""
Base.@kwdef mutable struct QdrantBatch <: OpenAPI.APIModel
    ids::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{QdrantExtendedPointId} }
    vectors = nothing # spec type: Union{ Nothing, QdrantBatchVectorStruct }
    payloads::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{QdrantBatchPayloadsInner} }

    function QdrantBatch(ids, vectors, payloads, )
        OpenAPI.validate_property(QdrantBatch, Symbol("ids"), ids)
        OpenAPI.validate_property(QdrantBatch, Symbol("vectors"), vectors)
        OpenAPI.validate_property(QdrantBatch, Symbol("payloads"), payloads)
        return new(ids, vectors, payloads, )
    end
end # type QdrantBatch

const _property_types_QdrantBatch = Dict{Symbol,String}(Symbol("ids")=>"Vector{QdrantExtendedPointId}", Symbol("vectors")=>"QdrantBatchVectorStruct", Symbol("payloads")=>"Vector{QdrantBatchPayloadsInner}", )
OpenAPI.property_type(::Type{ QdrantBatch }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantBatch[name]))}

function check_required(o::QdrantBatch)
    o.ids === nothing && (return false)
    o.vectors === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantBatch }, name::Symbol, val)
end