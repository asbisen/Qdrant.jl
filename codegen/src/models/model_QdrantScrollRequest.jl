# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ScrollRequest
Scroll request - paginate over all points which matches given condition

    QdrantScrollRequest(;
        shard_key=nothing,
        offset=nothing,
        limit=nothing,
        filter=nothing,
        with_payload=nothing,
        with_vector=nothing,
    )

    - shard_key::QdrantShardKeySelector
    - offset::QdrantExtendedPointId
    - limit::Int64 : Page size. Default: 10
    - filter::QdrantFilter
    - with_payload::QdrantWithPayloadInterface
    - with_vector::QdrantWithVector
"""
Base.@kwdef mutable struct QdrantScrollRequest <: OpenAPI.APIModel
    shard_key = nothing # spec type: Union{ Nothing, QdrantShardKeySelector }
    offset = nothing # spec type: Union{ Nothing, QdrantExtendedPointId }
    limit::Union{Nothing, Int64} = nothing
    filter = nothing # spec type: Union{ Nothing, QdrantFilter }
    with_payload = nothing # spec type: Union{ Nothing, QdrantWithPayloadInterface }
    with_vector = nothing # spec type: Union{ Nothing, QdrantWithVector }

    function QdrantScrollRequest(shard_key, offset, limit, filter, with_payload, with_vector, )
        OpenAPI.validate_property(QdrantScrollRequest, Symbol("shard_key"), shard_key)
        OpenAPI.validate_property(QdrantScrollRequest, Symbol("offset"), offset)
        OpenAPI.validate_property(QdrantScrollRequest, Symbol("limit"), limit)
        OpenAPI.validate_property(QdrantScrollRequest, Symbol("filter"), filter)
        OpenAPI.validate_property(QdrantScrollRequest, Symbol("with_payload"), with_payload)
        OpenAPI.validate_property(QdrantScrollRequest, Symbol("with_vector"), with_vector)
        return new(shard_key, offset, limit, filter, with_payload, with_vector, )
    end
end # type QdrantScrollRequest

const _property_types_QdrantScrollRequest = Dict{Symbol,String}(Symbol("shard_key")=>"QdrantShardKeySelector", Symbol("offset")=>"QdrantExtendedPointId", Symbol("limit")=>"Int64", Symbol("filter")=>"QdrantFilter", Symbol("with_payload")=>"QdrantWithPayloadInterface", Symbol("with_vector")=>"QdrantWithVector", )
OpenAPI.property_type(::Type{ QdrantScrollRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantScrollRequest[name]))}

function check_required(o::QdrantScrollRequest)
    true
end

function OpenAPI.validate_property(::Type{ QdrantScrollRequest }, name::Symbol, val)
    if name === Symbol("limit")
        OpenAPI.validate_param(name, "QdrantScrollRequest", :format, val, "uint")
    end
    if name === Symbol("limit")
        OpenAPI.validate_param(name, "QdrantScrollRequest", :minimum, val, 1, false)
    end
end
