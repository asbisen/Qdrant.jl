# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""GeoRadius
Geo filter request  Matches coordinates inside the circle of &#x60;radius&#x60; and center with coordinates &#x60;center&#x60;

    QdrantGeoRadius(;
        center=nothing,
        radius=nothing,
    )

    - center::QdrantGeoPoint
    - radius::Float64 : Radius of the area in meters
"""
Base.@kwdef mutable struct QdrantGeoRadius <: OpenAPI.APIModel
    center = nothing # spec type: Union{ Nothing, QdrantGeoPoint }
    radius::Union{Nothing, Float64} = nothing

    function QdrantGeoRadius(center, radius, )
        OpenAPI.validate_property(QdrantGeoRadius, Symbol("center"), center)
        OpenAPI.validate_property(QdrantGeoRadius, Symbol("radius"), radius)
        return new(center, radius, )
    end
end # type QdrantGeoRadius

const _property_types_QdrantGeoRadius = Dict{Symbol,String}(Symbol("center")=>"QdrantGeoPoint", Symbol("radius")=>"Float64", )
OpenAPI.property_type(::Type{ QdrantGeoRadius }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantGeoRadius[name]))}

function check_required(o::QdrantGeoRadius)
    o.center === nothing && (return false)
    o.radius === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantGeoRadius }, name::Symbol, val)
    if name === Symbol("radius")
        OpenAPI.validate_param(name, "QdrantGeoRadius", :format, val, "double")
    end
end
