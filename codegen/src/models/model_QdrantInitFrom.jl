# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""InitFrom
Operation for creating new collection and (optionally) specify index params

    QdrantInitFrom(;
        collection=nothing,
    )

    - collection::String
"""
Base.@kwdef mutable struct QdrantInitFrom <: OpenAPI.APIModel
    collection::Union{Nothing, String} = nothing

    function QdrantInitFrom(collection, )
        OpenAPI.validate_property(QdrantInitFrom, Symbol("collection"), collection)
        return new(collection, )
    end
end # type QdrantInitFrom

const _property_types_QdrantInitFrom = Dict{Symbol,String}(Symbol("collection")=>"String", )
OpenAPI.property_type(::Type{ QdrantInitFrom }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantInitFrom[name]))}

function check_required(o::QdrantInitFrom)
    o.collection === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantInitFrom }, name::Symbol, val)
end