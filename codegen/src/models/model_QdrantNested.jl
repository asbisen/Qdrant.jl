# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""Nested
Select points with payload for a specified nested field

    QdrantNested(;
        key=nothing,
        filter=nothing,
    )

    - key::String
    - filter::QdrantFilter
"""
Base.@kwdef mutable struct QdrantNested <: OpenAPI.APIModel
    key::Union{Nothing, String} = nothing
    filter = nothing # spec type: Union{ Nothing, QdrantFilter }

    function QdrantNested(key, filter, )
        OpenAPI.validate_property(QdrantNested, Symbol("key"), key)
        OpenAPI.validate_property(QdrantNested, Symbol("filter"), filter)
        return new(key, filter, )
    end
end # type QdrantNested

const _property_types_QdrantNested = Dict{Symbol,String}(Symbol("key")=>"String", Symbol("filter")=>"QdrantFilter", )
OpenAPI.property_type(::Type{ QdrantNested }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantNested[name]))}

function check_required(o::QdrantNested)
    o.key === nothing && (return false)
    o.filter === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantNested }, name::Symbol, val)
end
