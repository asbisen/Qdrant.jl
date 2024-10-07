# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""OrderByQuery

    QdrantOrderByQuery(;
        order_by=nothing,
    )

    - order_by::QdrantOrderByInterface
"""
Base.@kwdef mutable struct QdrantOrderByQuery <: OpenAPI.APIModel
    order_by = nothing # spec type: Union{ Nothing, QdrantOrderByInterface }

    function QdrantOrderByQuery(order_by, )
        OpenAPI.validate_property(QdrantOrderByQuery, Symbol("order_by"), order_by)
        return new(order_by, )
    end
end # type QdrantOrderByQuery

const _property_types_QdrantOrderByQuery = Dict{Symbol,String}(Symbol("order_by")=>"QdrantOrderByInterface", )
OpenAPI.property_type(::Type{ QdrantOrderByQuery }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantOrderByQuery[name]))}

function check_required(o::QdrantOrderByQuery)
    o.order_by === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantOrderByQuery }, name::Symbol, val)
end