# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""FilterSelector

    QdrantFilterSelector(;
        filter=nothing,
        shard_key=nothing,
    )

    - filter::QdrantFilter
    - shard_key::QdrantShardKeySelector
"""
Base.@kwdef mutable struct QdrantFilterSelector <: OpenAPI.APIModel
    filter = nothing # spec type: Union{ Nothing, QdrantFilter }
    shard_key = nothing # spec type: Union{ Nothing, QdrantShardKeySelector }

    function QdrantFilterSelector(filter, shard_key, )
        OpenAPI.validate_property(QdrantFilterSelector, Symbol("filter"), filter)
        OpenAPI.validate_property(QdrantFilterSelector, Symbol("shard_key"), shard_key)
        return new(filter, shard_key, )
    end
end # type QdrantFilterSelector

const _property_types_QdrantFilterSelector = Dict{Symbol,String}(Symbol("filter")=>"QdrantFilter", Symbol("shard_key")=>"QdrantShardKeySelector", )
OpenAPI.property_type(::Type{ QdrantFilterSelector }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantFilterSelector[name]))}

function check_required(o::QdrantFilterSelector)
    o.filter === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantFilterSelector }, name::Symbol, val)
end
