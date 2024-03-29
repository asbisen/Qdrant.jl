# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.



@doc raw"""WithVector
Options for specifying which vector to include

    QdrantWithVector(; value=nothing)
"""
mutable struct QdrantWithVector <: OpenAPI.AnyOfAPIModel
    value::Any # Union{ Bool, Vector{String} }
    QdrantWithVector() = new()
    QdrantWithVector(value) = new(value)
end # type QdrantWithVector

function OpenAPI.property_type(::Type{ QdrantWithVector }, name::Symbol, json::Dict{String,Any})
    
    # no discriminator specified, can't determine the exact type
    return fieldtype(QdrantWithVector, name)
end
