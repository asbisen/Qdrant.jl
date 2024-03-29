# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""CreateAlias
Create alternative name for a collection. Collection will be available under both names for search, retrieve,

    QdrantCreateAlias(;
        collection_name=nothing,
        alias_name=nothing,
    )

    - collection_name::String
    - alias_name::String
"""
Base.@kwdef mutable struct QdrantCreateAlias <: OpenAPI.APIModel
    collection_name::Union{Nothing, String} = nothing
    alias_name::Union{Nothing, String} = nothing

    function QdrantCreateAlias(collection_name, alias_name, )
        OpenAPI.validate_property(QdrantCreateAlias, Symbol("collection_name"), collection_name)
        OpenAPI.validate_property(QdrantCreateAlias, Symbol("alias_name"), alias_name)
        return new(collection_name, alias_name, )
    end
end # type QdrantCreateAlias

const _property_types_QdrantCreateAlias = Dict{Symbol,String}(Symbol("collection_name")=>"String", Symbol("alias_name")=>"String", )
OpenAPI.property_type(::Type{ QdrantCreateAlias }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantCreateAlias[name]))}

function check_required(o::QdrantCreateAlias)
    o.collection_name === nothing && (return false)
    o.alias_name === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantCreateAlias }, name::Symbol, val)
end
