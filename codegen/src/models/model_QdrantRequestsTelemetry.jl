# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""RequestsTelemetry

    QdrantRequestsTelemetry(;
        rest=nothing,
        grpc=nothing,
    )

    - rest::QdrantWebApiTelemetry
    - grpc::QdrantGrpcTelemetry
"""
Base.@kwdef mutable struct QdrantRequestsTelemetry <: OpenAPI.APIModel
    rest = nothing # spec type: Union{ Nothing, QdrantWebApiTelemetry }
    grpc = nothing # spec type: Union{ Nothing, QdrantGrpcTelemetry }

    function QdrantRequestsTelemetry(rest, grpc, )
        OpenAPI.validate_property(QdrantRequestsTelemetry, Symbol("rest"), rest)
        OpenAPI.validate_property(QdrantRequestsTelemetry, Symbol("grpc"), grpc)
        return new(rest, grpc, )
    end
end # type QdrantRequestsTelemetry

const _property_types_QdrantRequestsTelemetry = Dict{Symbol,String}(Symbol("rest")=>"QdrantWebApiTelemetry", Symbol("grpc")=>"QdrantGrpcTelemetry", )
OpenAPI.property_type(::Type{ QdrantRequestsTelemetry }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantRequestsTelemetry[name]))}

function check_required(o::QdrantRequestsTelemetry)
    o.rest === nothing && (return false)
    o.grpc === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantRequestsTelemetry }, name::Symbol, val)
end