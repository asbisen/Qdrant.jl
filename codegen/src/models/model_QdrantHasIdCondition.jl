# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""HasIdCondition
ID-based filtering condition

    QdrantHasIdCondition(;
        has_id=nothing,
    )

    - has_id::Vector{QdrantExtendedPointId}
"""
Base.@kwdef mutable struct QdrantHasIdCondition <: OpenAPI.APIModel
    has_id::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{QdrantExtendedPointId} }

    function QdrantHasIdCondition(has_id, )
        OpenAPI.validate_property(QdrantHasIdCondition, Symbol("has_id"), has_id)
        return new(has_id, )
    end
end # type QdrantHasIdCondition

const _property_types_QdrantHasIdCondition = Dict{Symbol,String}(Symbol("has_id")=>"Vector{QdrantExtendedPointId}", )
OpenAPI.property_type(::Type{ QdrantHasIdCondition }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantHasIdCondition[name]))}

function check_required(o::QdrantHasIdCondition)
    o.has_id === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantHasIdCondition }, name::Symbol, val)
    if name === Symbol("has_id")
        OpenAPI.validate_param(name, "QdrantHasIdCondition", :uniqueItems, val, true)
    end
end