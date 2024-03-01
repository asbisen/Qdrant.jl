# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.



@doc raw"""QuantizationConfigDiff

    QdrantQuantizationConfigDiff(; value=nothing)
"""
mutable struct QdrantQuantizationConfigDiff <: OpenAPI.AnyOfAPIModel
    value::Any # Union{ QdrantBinaryQuantization, QdrantDisabled, QdrantProductQuantization, QdrantScalarQuantization }
    QdrantQuantizationConfigDiff() = new()
    QdrantQuantizationConfigDiff(value) = new(value)
end # type QdrantQuantizationConfigDiff

function OpenAPI.property_type(::Type{ QdrantQuantizationConfigDiff }, name::Symbol, json::Dict{String,Any})
    
    # no discriminator specified, can't determine the exact type
    return fieldtype(QdrantQuantizationConfigDiff, name)
end