# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""DeleteAlias
Delete alias if exists

    QdrantDeleteAlias(;
        alias_name=nothing,
    )

    - alias_name::String
"""
Base.@kwdef mutable struct QdrantDeleteAlias <: OpenAPI.APIModel
    alias_name::Union{Nothing, String} = nothing

    function QdrantDeleteAlias(alias_name, )
        OpenAPI.validate_property(QdrantDeleteAlias, Symbol("alias_name"), alias_name)
        return new(alias_name, )
    end
end # type QdrantDeleteAlias

const _property_types_QdrantDeleteAlias = Dict{Symbol,String}(Symbol("alias_name")=>"String", )
OpenAPI.property_type(::Type{ QdrantDeleteAlias }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantDeleteAlias[name]))}

function check_required(o::QdrantDeleteAlias)
    o.alias_name === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantDeleteAlias }, name::Symbol, val)
end
