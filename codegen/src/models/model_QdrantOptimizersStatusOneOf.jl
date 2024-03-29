# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""OptimizersStatus_oneOf
Something wrong happened with optimizers

    QdrantOptimizersStatusOneOf(;
        error=nothing,
    )

    - error::String
"""
Base.@kwdef mutable struct QdrantOptimizersStatusOneOf <: OpenAPI.APIModel
    error::Union{Nothing, String} = nothing

    function QdrantOptimizersStatusOneOf(error, )
        OpenAPI.validate_property(QdrantOptimizersStatusOneOf, Symbol("error"), error)
        return new(error, )
    end
end # type QdrantOptimizersStatusOneOf

const _property_types_QdrantOptimizersStatusOneOf = Dict{Symbol,String}(Symbol("error")=>"String", )
OpenAPI.property_type(::Type{ QdrantOptimizersStatusOneOf }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantOptimizersStatusOneOf[name]))}

function check_required(o::QdrantOptimizersStatusOneOf)
    o.error === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantOptimizersStatusOneOf }, name::Symbol, val)
end
