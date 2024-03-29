# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""CreateShardingKey

    QdrantCreateShardingKey(;
        shard_key=nothing,
        shards_number=nothing,
        replication_factor=nothing,
        placement=nothing,
    )

    - shard_key::QdrantShardKey
    - shards_number::Int64 : How many shards to create for this key If not specified, will use the default value from config
    - replication_factor::Int64 : How many replicas to create for each shard If not specified, will use the default value from config
    - placement::Vector{Int64} : Placement of shards for this key List of peer ids, that can be used to place shards for this key If not specified, will be randomly placed among all peers
"""
Base.@kwdef mutable struct QdrantCreateShardingKey <: OpenAPI.APIModel
    shard_key = nothing # spec type: Union{ Nothing, QdrantShardKey }
    shards_number::Union{Nothing, Int64} = nothing
    replication_factor::Union{Nothing, Int64} = nothing
    placement::Union{Nothing, Vector{Int64}} = nothing

    function QdrantCreateShardingKey(shard_key, shards_number, replication_factor, placement, )
        OpenAPI.validate_property(QdrantCreateShardingKey, Symbol("shard_key"), shard_key)
        OpenAPI.validate_property(QdrantCreateShardingKey, Symbol("shards_number"), shards_number)
        OpenAPI.validate_property(QdrantCreateShardingKey, Symbol("replication_factor"), replication_factor)
        OpenAPI.validate_property(QdrantCreateShardingKey, Symbol("placement"), placement)
        return new(shard_key, shards_number, replication_factor, placement, )
    end
end # type QdrantCreateShardingKey

const _property_types_QdrantCreateShardingKey = Dict{Symbol,String}(Symbol("shard_key")=>"QdrantShardKey", Symbol("shards_number")=>"Int64", Symbol("replication_factor")=>"Int64", Symbol("placement")=>"Vector{Int64}", )
OpenAPI.property_type(::Type{ QdrantCreateShardingKey }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantCreateShardingKey[name]))}

function check_required(o::QdrantCreateShardingKey)
    o.shard_key === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantCreateShardingKey }, name::Symbol, val)
    if name === Symbol("shards_number")
        OpenAPI.validate_param(name, "QdrantCreateShardingKey", :format, val, "uint32")
    end
    if name === Symbol("shards_number")
        OpenAPI.validate_param(name, "QdrantCreateShardingKey", :minimum, val, 1, false)
    end
    if name === Symbol("replication_factor")
        OpenAPI.validate_param(name, "QdrantCreateShardingKey", :format, val, "uint32")
    end
    if name === Symbol("replication_factor")
        OpenAPI.validate_param(name, "QdrantCreateShardingKey", :minimum, val, 1, false)
    end
end
