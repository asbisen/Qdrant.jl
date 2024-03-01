# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.



@doc raw"""CollectionTelemetryEnum

    QdrantCollectionTelemetryEnum(; value=nothing)
"""
mutable struct QdrantCollectionTelemetryEnum <: OpenAPI.AnyOfAPIModel
    value::Any # Union{ QdrantCollectionTelemetry, QdrantCollectionsAggregatedTelemetry }
    QdrantCollectionTelemetryEnum() = new()
    QdrantCollectionTelemetryEnum(value) = new(value)
end # type QdrantCollectionTelemetryEnum

function OpenAPI.property_type(::Type{ QdrantCollectionTelemetryEnum }, name::Symbol, json::Dict{String,Any})
    
    # no discriminator specified, can't determine the exact type
    return fieldtype(QdrantCollectionTelemetryEnum, name)
end
