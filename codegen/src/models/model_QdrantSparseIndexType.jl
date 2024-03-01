# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.



@doc raw"""SparseIndexType
Sparse index types

    QdrantSparseIndexType(; value=nothing)
"""
mutable struct QdrantSparseIndexType <: OpenAPI.OneOfAPIModel
    value::Any # Union{ String }
    QdrantSparseIndexType() = new()
    QdrantSparseIndexType(value) = new(value)
end # type QdrantSparseIndexType

function OpenAPI.property_type(::Type{ QdrantSparseIndexType }, name::Symbol, json::Dict{String,Any})
    
    # no discriminator specified, can't determine the exact type
    return fieldtype(QdrantSparseIndexType, name)
end
