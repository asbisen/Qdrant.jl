# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.



@doc raw"""VectorsConfig
Vector params separator for single and multiple vector modes Single mode:  { \&quot;size\&quot;: 128, \&quot;distance\&quot;: \&quot;Cosine\&quot; }  or multiple mode:  { \&quot;default\&quot;: { \&quot;size\&quot;: 128, \&quot;distance\&quot;: \&quot;Cosine\&quot; } }

    QdrantVectorsConfig(; value=nothing)
"""
mutable struct QdrantVectorsConfig <: OpenAPI.AnyOfAPIModel
    value::Any # Union{ Dict{String, QdrantVectorParams}, QdrantVectorParams }
    QdrantVectorsConfig() = new()
    QdrantVectorsConfig(value) = new(value)
end # type QdrantVectorsConfig

function OpenAPI.property_type(::Type{ QdrantVectorsConfig }, name::Symbol, json::Dict{String,Any})
    
    # no discriminator specified, can't determine the exact type
    return fieldtype(QdrantVectorsConfig, name)
end
