# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""DatetimeRange
Range filter request

    QdrantDatetimeRange(;
        lt=nothing,
        gt=nothing,
        gte=nothing,
        lte=nothing,
    )

    - lt::ZonedDateTime : point.key &lt; range.lt
    - gt::ZonedDateTime : point.key &gt; range.gt
    - gte::ZonedDateTime : point.key &gt;&#x3D; range.gte
    - lte::ZonedDateTime : point.key &lt;&#x3D; range.lte
"""
Base.@kwdef mutable struct QdrantDatetimeRange <: OpenAPI.APIModel
    lt::Union{Nothing, ZonedDateTime} = nothing
    gt::Union{Nothing, ZonedDateTime} = nothing
    gte::Union{Nothing, ZonedDateTime} = nothing
    lte::Union{Nothing, ZonedDateTime} = nothing

    function QdrantDatetimeRange(lt, gt, gte, lte, )
        OpenAPI.validate_property(QdrantDatetimeRange, Symbol("lt"), lt)
        OpenAPI.validate_property(QdrantDatetimeRange, Symbol("gt"), gt)
        OpenAPI.validate_property(QdrantDatetimeRange, Symbol("gte"), gte)
        OpenAPI.validate_property(QdrantDatetimeRange, Symbol("lte"), lte)
        return new(lt, gt, gte, lte, )
    end
end # type QdrantDatetimeRange

const _property_types_QdrantDatetimeRange = Dict{Symbol,String}(Symbol("lt")=>"ZonedDateTime", Symbol("gt")=>"ZonedDateTime", Symbol("gte")=>"ZonedDateTime", Symbol("lte")=>"ZonedDateTime", )
OpenAPI.property_type(::Type{ QdrantDatetimeRange }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantDatetimeRange[name]))}

function check_required(o::QdrantDatetimeRange)
    true
end

function OpenAPI.validate_property(::Type{ QdrantDatetimeRange }, name::Symbol, val)
    if name === Symbol("lt")
        OpenAPI.validate_param(name, "QdrantDatetimeRange", :format, val, "date-time")
    end
    if name === Symbol("gt")
        OpenAPI.validate_param(name, "QdrantDatetimeRange", :format, val, "date-time")
    end
    if name === Symbol("gte")
        OpenAPI.validate_param(name, "QdrantDatetimeRange", :format, val, "date-time")
    end
    if name === Symbol("lte")
        OpenAPI.validate_param(name, "QdrantDatetimeRange", :format, val, "date-time")
    end
end