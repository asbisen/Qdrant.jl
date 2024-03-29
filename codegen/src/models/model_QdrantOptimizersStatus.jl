# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.



@doc raw"""OptimizersStatus
Current state of the collection

    QdrantOptimizersStatus(; value=nothing)
"""
mutable struct QdrantOptimizersStatus <: OpenAPI.OneOfAPIModel
    value::Any # Union{ QdrantOptimizersStatusOneOf, String }
    QdrantOptimizersStatus() = new()
    QdrantOptimizersStatus(value) = new(value)
end # type QdrantOptimizersStatus

function OpenAPI.property_type(::Type{ QdrantOptimizersStatus }, name::Symbol, json::Dict{String,Any})
    
    # no discriminator specified, can't determine the exact type
    return fieldtype(QdrantOptimizersStatus, name)
end
