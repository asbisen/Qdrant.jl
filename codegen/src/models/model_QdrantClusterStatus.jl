# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.



@doc raw"""ClusterStatus
Information about current cluster status and structure

    QdrantClusterStatus(; value=nothing)
"""
mutable struct QdrantClusterStatus <: OpenAPI.OneOfAPIModel
    value::Any # Union{ QdrantClusterStatusOneOf, QdrantClusterStatusOneOf1 }
    QdrantClusterStatus() = new()
    QdrantClusterStatus(value) = new(value)
end # type QdrantClusterStatus

function OpenAPI.property_type(::Type{ QdrantClusterStatus }, name::Symbol, json::Dict{String,Any})
    
    # no discriminator specified, can't determine the exact type
    return fieldtype(QdrantClusterStatus, name)
end
