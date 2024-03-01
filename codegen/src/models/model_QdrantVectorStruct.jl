# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.



@doc raw"""VectorStruct
Full vector data per point separator with single and multiple vector modes

    QdrantVectorStruct(; value=nothing)
"""
mutable struct QdrantVectorStruct <: OpenAPI.AnyOfAPIModel
    value::Any # Union{ Dict{String, QdrantVector}, Vector{Float32} }
    QdrantVectorStruct() = new()
    QdrantVectorStruct(value) = new(value)
end # type QdrantVectorStruct

function OpenAPI.property_type(::Type{ QdrantVectorStruct }, name::Symbol, json::Dict{String,Any})
    
    # no discriminator specified, can't determine the exact type
    return fieldtype(QdrantVectorStruct, name)
end
