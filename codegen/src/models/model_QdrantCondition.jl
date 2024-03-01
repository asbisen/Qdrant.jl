# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.



@doc raw"""Condition

    QdrantCondition(; value=nothing)
"""
mutable struct QdrantCondition <: OpenAPI.AnyOfAPIModel
    value::Any # Union{ QdrantFieldCondition, QdrantFilter, QdrantHasIdCondition, QdrantIsEmptyCondition, QdrantIsNullCondition, QdrantNestedCondition }
    QdrantCondition() = new()
    QdrantCondition(value) = new(value)
end # type QdrantCondition

function OpenAPI.property_type(::Type{ QdrantCondition }, name::Symbol, json::Dict{String,Any})
    
    # no discriminator specified, can't determine the exact type
    return fieldtype(QdrantCondition, name)
end