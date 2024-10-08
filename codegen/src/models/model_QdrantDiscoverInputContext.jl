# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.



@doc raw"""DiscoverInput_context
Search space will be constrained by these pairs of vectors

    QdrantDiscoverInputContext(; value=nothing)
"""
mutable struct QdrantDiscoverInputContext <: OpenAPI.AnyOfAPIModel
    value::Any # Union{ QdrantContextPair, Vector{QdrantContextPair} }
    QdrantDiscoverInputContext() = new()
    QdrantDiscoverInputContext(value) = new(value)
end # type QdrantDiscoverInputContext

function OpenAPI.property_type(::Type{ QdrantDiscoverInputContext }, name::Symbol, json::Dict{String,Any})
    
    # no discriminator specified, can't determine the exact type
    return fieldtype(QdrantDiscoverInputContext, name)
end
