# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ShardSnapshotRecover

    QdrantShardSnapshotRecover(;
        location=nothing,
        priority=nothing,
    )

    - location::QdrantShardSnapshotLocation
    - priority::QdrantSnapshotPriority
"""
Base.@kwdef mutable struct QdrantShardSnapshotRecover <: OpenAPI.APIModel
    location = nothing # spec type: Union{ Nothing, QdrantShardSnapshotLocation }
    priority = nothing # spec type: Union{ Nothing, QdrantSnapshotPriority }

    function QdrantShardSnapshotRecover(location, priority, )
        OpenAPI.validate_property(QdrantShardSnapshotRecover, Symbol("location"), location)
        OpenAPI.validate_property(QdrantShardSnapshotRecover, Symbol("priority"), priority)
        return new(location, priority, )
    end
end # type QdrantShardSnapshotRecover

const _property_types_QdrantShardSnapshotRecover = Dict{Symbol,String}(Symbol("location")=>"QdrantShardSnapshotLocation", Symbol("priority")=>"QdrantSnapshotPriority", )
OpenAPI.property_type(::Type{ QdrantShardSnapshotRecover }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantShardSnapshotRecover[name]))}

function check_required(o::QdrantShardSnapshotRecover)
    o.location === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantShardSnapshotRecover }, name::Symbol, val)
end
