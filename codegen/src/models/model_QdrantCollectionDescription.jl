# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""CollectionDescription

    QdrantCollectionDescription(;
        name=nothing,
    )

    - name::String
"""
Base.@kwdef mutable struct QdrantCollectionDescription <: OpenAPI.APIModel
    name::Union{Nothing, String} = nothing

    function QdrantCollectionDescription(name, )
        OpenAPI.validate_property(QdrantCollectionDescription, Symbol("name"), name)
        return new(name, )
    end
end # type QdrantCollectionDescription

const _property_types_QdrantCollectionDescription = Dict{Symbol,String}(Symbol("name")=>"String", )
OpenAPI.property_type(::Type{ QdrantCollectionDescription }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantCollectionDescription[name]))}

function check_required(o::QdrantCollectionDescription)
    o.name === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantCollectionDescription }, name::Symbol, val)
end