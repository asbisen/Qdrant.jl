# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.



@doc raw"""WithLookupInterface

    QdrantWithLookupInterface(; value=nothing)
"""
mutable struct QdrantWithLookupInterface <: OpenAPI.AnyOfAPIModel
    value::Any # Union{ QdrantWithLookup, String }
    QdrantWithLookupInterface() = new()
    QdrantWithLookupInterface(value) = new(value)
end # type QdrantWithLookupInterface

function OpenAPI.property_type(::Type{ QdrantWithLookupInterface }, name::Symbol, json::Dict{String,Any})
    
    # no discriminator specified, can't determine the exact type
    return fieldtype(QdrantWithLookupInterface, name)
end
