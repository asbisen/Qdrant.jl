# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ChangeAliasesOperation
Operation for performing changes of collection aliases. Alias changes are atomic, meaning that no collection modifications can happen between alias operations.

    QdrantChangeAliasesOperation(;
        actions=nothing,
    )

    - actions::Vector{QdrantAliasOperations}
"""
Base.@kwdef mutable struct QdrantChangeAliasesOperation <: OpenAPI.APIModel
    actions::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{QdrantAliasOperations} }

    function QdrantChangeAliasesOperation(actions, )
        OpenAPI.validate_property(QdrantChangeAliasesOperation, Symbol("actions"), actions)
        return new(actions, )
    end
end # type QdrantChangeAliasesOperation

const _property_types_QdrantChangeAliasesOperation = Dict{Symbol,String}(Symbol("actions")=>"Vector{QdrantAliasOperations}", )
OpenAPI.property_type(::Type{ QdrantChangeAliasesOperation }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantChangeAliasesOperation[name]))}

function check_required(o::QdrantChangeAliasesOperation)
    o.actions === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantChangeAliasesOperation }, name::Symbol, val)
end
