# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""DeleteAliasOperation
Delete alias if exists

    QdrantDeleteAliasOperation(;
        delete_alias=nothing,
    )

    - delete_alias::QdrantDeleteAlias
"""
Base.@kwdef mutable struct QdrantDeleteAliasOperation <: OpenAPI.APIModel
    delete_alias = nothing # spec type: Union{ Nothing, QdrantDeleteAlias }

    function QdrantDeleteAliasOperation(delete_alias, )
        OpenAPI.validate_property(QdrantDeleteAliasOperation, Symbol("delete_alias"), delete_alias)
        return new(delete_alias, )
    end
end # type QdrantDeleteAliasOperation

const _property_types_QdrantDeleteAliasOperation = Dict{Symbol,String}(Symbol("delete_alias")=>"QdrantDeleteAlias", )
OpenAPI.property_type(::Type{ QdrantDeleteAliasOperation }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantDeleteAliasOperation[name]))}

function check_required(o::QdrantDeleteAliasOperation)
    o.delete_alias === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantDeleteAliasOperation }, name::Symbol, val)
end
