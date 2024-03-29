# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""RemoteShardInfo

    QdrantRemoteShardInfo(;
        shard_id=nothing,
        shard_key=nothing,
        peer_id=nothing,
        state=nothing,
    )

    - shard_id::Int64 : Remote shard id
    - shard_key::QdrantShardKey
    - peer_id::Int64 : Remote peer id
    - state::QdrantReplicaState
"""
Base.@kwdef mutable struct QdrantRemoteShardInfo <: OpenAPI.APIModel
    shard_id::Union{Nothing, Int64} = nothing
    shard_key = nothing # spec type: Union{ Nothing, QdrantShardKey }
    peer_id::Union{Nothing, Int64} = nothing
    state = nothing # spec type: Union{ Nothing, QdrantReplicaState }

    function QdrantRemoteShardInfo(shard_id, shard_key, peer_id, state, )
        OpenAPI.validate_property(QdrantRemoteShardInfo, Symbol("shard_id"), shard_id)
        OpenAPI.validate_property(QdrantRemoteShardInfo, Symbol("shard_key"), shard_key)
        OpenAPI.validate_property(QdrantRemoteShardInfo, Symbol("peer_id"), peer_id)
        OpenAPI.validate_property(QdrantRemoteShardInfo, Symbol("state"), state)
        return new(shard_id, shard_key, peer_id, state, )
    end
end # type QdrantRemoteShardInfo

const _property_types_QdrantRemoteShardInfo = Dict{Symbol,String}(Symbol("shard_id")=>"Int64", Symbol("shard_key")=>"QdrantShardKey", Symbol("peer_id")=>"Int64", Symbol("state")=>"QdrantReplicaState", )
OpenAPI.property_type(::Type{ QdrantRemoteShardInfo }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantRemoteShardInfo[name]))}

function check_required(o::QdrantRemoteShardInfo)
    o.shard_id === nothing && (return false)
    o.peer_id === nothing && (return false)
    o.state === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantRemoteShardInfo }, name::Symbol, val)
    if name === Symbol("shard_id")
        OpenAPI.validate_param(name, "QdrantRemoteShardInfo", :format, val, "uint32")
    end
    if name === Symbol("shard_id")
        OpenAPI.validate_param(name, "QdrantRemoteShardInfo", :minimum, val, 0, false)
    end
    if name === Symbol("peer_id")
        OpenAPI.validate_param(name, "QdrantRemoteShardInfo", :format, val, "uint64")
    end
    if name === Symbol("peer_id")
        OpenAPI.validate_param(name, "QdrantRemoteShardInfo", :minimum, val, 0, false)
    end
end
