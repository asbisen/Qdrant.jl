# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""GeoLineString
Ordered sequence of GeoPoints representing the line

    QdrantGeoLineString(;
        points=nothing,
    )

    - points::Vector{QdrantGeoPoint}
"""
Base.@kwdef mutable struct QdrantGeoLineString <: OpenAPI.APIModel
    points::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{QdrantGeoPoint} }

    function QdrantGeoLineString(points, )
        OpenAPI.validate_property(QdrantGeoLineString, Symbol("points"), points)
        return new(points, )
    end
end # type QdrantGeoLineString

const _property_types_QdrantGeoLineString = Dict{Symbol,String}(Symbol("points")=>"Vector{QdrantGeoPoint}", )
OpenAPI.property_type(::Type{ QdrantGeoLineString }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantGeoLineString[name]))}

function check_required(o::QdrantGeoLineString)
    o.points === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantGeoLineString }, name::Symbol, val)
end
