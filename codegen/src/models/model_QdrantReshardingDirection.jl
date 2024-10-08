# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.



@doc raw"""ReshardingDirection
Resharding direction, scale up or down in number of shards

    QdrantReshardingDirection(; value=nothing)
"""
mutable struct QdrantReshardingDirection <: OpenAPI.OneOfAPIModel
    value::Any # Union{ String }
    QdrantReshardingDirection() = new()
    QdrantReshardingDirection(value) = new(value)
end # type QdrantReshardingDirection

function OpenAPI.property_type(::Type{ QdrantReshardingDirection }, name::Symbol, json::Dict{String,Any})
    
    # no discriminator specified, can't determine the exact type
    return fieldtype(QdrantReshardingDirection, name)
end
