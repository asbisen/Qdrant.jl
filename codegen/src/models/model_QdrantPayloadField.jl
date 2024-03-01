# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""PayloadField
Payload field

    QdrantPayloadField(;
        key=nothing,
    )

    - key::String : Payload field name
"""
Base.@kwdef mutable struct QdrantPayloadField <: OpenAPI.APIModel
    key::Union{Nothing, String} = nothing

    function QdrantPayloadField(key, )
        OpenAPI.validate_property(QdrantPayloadField, Symbol("key"), key)
        return new(key, )
    end
end # type QdrantPayloadField

const _property_types_QdrantPayloadField = Dict{Symbol,String}(Symbol("key")=>"String", )
OpenAPI.property_type(::Type{ QdrantPayloadField }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantPayloadField[name]))}

function check_required(o::QdrantPayloadField)
    o.key === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantPayloadField }, name::Symbol, val)
end