# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""CreateAliasOperation

    QdrantCreateAliasOperation(;
        create_alias=nothing,
    )

    - create_alias::QdrantCreateAlias
"""
Base.@kwdef mutable struct QdrantCreateAliasOperation <: OpenAPI.APIModel
    create_alias = nothing # spec type: Union{ Nothing, QdrantCreateAlias }

    function QdrantCreateAliasOperation(create_alias, )
        OpenAPI.validate_property(QdrantCreateAliasOperation, Symbol("create_alias"), create_alias)
        return new(create_alias, )
    end
end # type QdrantCreateAliasOperation

const _property_types_QdrantCreateAliasOperation = Dict{Symbol,String}(Symbol("create_alias")=>"QdrantCreateAlias", )
OpenAPI.property_type(::Type{ QdrantCreateAliasOperation }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantCreateAliasOperation[name]))}

function check_required(o::QdrantCreateAliasOperation)
    o.create_alias === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantCreateAliasOperation }, name::Symbol, val)
end