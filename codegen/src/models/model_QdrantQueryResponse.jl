# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""QueryResponse

    QdrantQueryResponse(;
        points=nothing,
    )

    - points::Vector{QdrantScoredPoint}
"""
Base.@kwdef mutable struct QdrantQueryResponse <: OpenAPI.APIModel
    points::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{QdrantScoredPoint} }

    function QdrantQueryResponse(points, )
        OpenAPI.validate_property(QdrantQueryResponse, Symbol("points"), points)
        return new(points, )
    end
end # type QdrantQueryResponse

const _property_types_QdrantQueryResponse = Dict{Symbol,String}(Symbol("points")=>"Vector{QdrantScoredPoint}", )
OpenAPI.property_type(::Type{ QdrantQueryResponse }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantQueryResponse[name]))}

function check_required(o::QdrantQueryResponse)
    o.points === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantQueryResponse }, name::Symbol, val)
end
