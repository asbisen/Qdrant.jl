# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.



@doc raw"""Prefetch_prefetch
Sub-requests to perform first. If present, the query will be performed on the results of the prefetches.

    QdrantPrefetchPrefetch(; value=nothing)
"""
mutable struct QdrantPrefetchPrefetch <: OpenAPI.AnyOfAPIModel
    value::Any # Union{ QdrantPrefetch, Vector{QdrantPrefetch} }
    QdrantPrefetchPrefetch() = new()
    QdrantPrefetchPrefetch(value) = new(value)
end # type QdrantPrefetchPrefetch

function OpenAPI.property_type(::Type{ QdrantPrefetchPrefetch }, name::Symbol, json::Dict{String,Any})
    
    # no discriminator specified, can't determine the exact type
    return fieldtype(QdrantPrefetchPrefetch, name)
end
