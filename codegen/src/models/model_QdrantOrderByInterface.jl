# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.



@doc raw"""OrderByInterface

    QdrantOrderByInterface(; value=nothing)
"""
mutable struct QdrantOrderByInterface <: OpenAPI.AnyOfAPIModel
    value::Any # Union{ QdrantOrderBy, String }
    QdrantOrderByInterface() = new()
    QdrantOrderByInterface(value) = new(value)
end # type QdrantOrderByInterface

function OpenAPI.property_type(::Type{ QdrantOrderByInterface }, name::Symbol, json::Dict{String,Any})
    
    # no discriminator specified, can't determine the exact type
    return fieldtype(QdrantOrderByInterface, name)
end
