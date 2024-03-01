# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""DropShardingKey

    QdrantDropShardingKey(;
        shard_key=nothing,
    )

    - shard_key::QdrantShardKey
"""
Base.@kwdef mutable struct QdrantDropShardingKey <: OpenAPI.APIModel
    shard_key = nothing # spec type: Union{ Nothing, QdrantShardKey }

    function QdrantDropShardingKey(shard_key, )
        OpenAPI.validate_property(QdrantDropShardingKey, Symbol("shard_key"), shard_key)
        return new(shard_key, )
    end
end # type QdrantDropShardingKey

const _property_types_QdrantDropShardingKey = Dict{Symbol,String}(Symbol("shard_key")=>"QdrantShardKey", )
OpenAPI.property_type(::Type{ QdrantDropShardingKey }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantDropShardingKey[name]))}

function check_required(o::QdrantDropShardingKey)
    o.shard_key === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantDropShardingKey }, name::Symbol, val)
end