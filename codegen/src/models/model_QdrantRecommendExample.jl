# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.



@doc raw"""RecommendExample

    QdrantRecommendExample(; value=nothing)
"""
mutable struct QdrantRecommendExample <: OpenAPI.AnyOfAPIModel
    value::Any # Union{ QdrantExtendedPointId, QdrantSparseVector, Vector{Float32} }
    QdrantRecommendExample() = new()
    QdrantRecommendExample(value) = new(value)
end # type QdrantRecommendExample

function OpenAPI.property_type(::Type{ QdrantRecommendExample }, name::Symbol, json::Dict{String,Any})
    
    # no discriminator specified, can't determine the exact type
    return fieldtype(QdrantRecommendExample, name)
end
