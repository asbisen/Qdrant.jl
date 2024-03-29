# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.



@doc raw"""WithPayloadInterface
Options for specifying which payload to include or not

    QdrantWithPayloadInterface(; value=nothing)
"""
mutable struct QdrantWithPayloadInterface <: OpenAPI.AnyOfAPIModel
    value::Any # Union{ Bool, QdrantPayloadSelector, Vector{String} }
    QdrantWithPayloadInterface() = new()
    QdrantWithPayloadInterface(value) = new(value)
end # type QdrantWithPayloadInterface

function OpenAPI.property_type(::Type{ QdrantWithPayloadInterface }, name::Symbol, json::Dict{String,Any})
    
    # no discriminator specified, can't determine the exact type
    return fieldtype(QdrantWithPayloadInterface, name)
end
