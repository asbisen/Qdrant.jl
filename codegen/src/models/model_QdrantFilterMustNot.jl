# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.



@doc raw"""Filter_must_not
All conditions must NOT match

    QdrantFilterMustNot(; value=nothing)
"""
mutable struct QdrantFilterMustNot <: OpenAPI.AnyOfAPIModel
    value::Any # Union{ QdrantCondition, Vector{QdrantCondition} }
    QdrantFilterMustNot() = new()
    QdrantFilterMustNot(value) = new(value)
end # type QdrantFilterMustNot

function OpenAPI.property_type(::Type{ QdrantFilterMustNot }, name::Symbol, json::Dict{String,Any})
    
    # no discriminator specified, can't determine the exact type
    return fieldtype(QdrantFilterMustNot, name)
end
