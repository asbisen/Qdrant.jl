# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ClusterTelemetry

    QdrantClusterTelemetry(;
        enabled=nothing,
        status=nothing,
        config=nothing,
    )

    - enabled::Bool
    - status::QdrantClusterStatusTelemetry
    - config::QdrantClusterConfigTelemetry
"""
Base.@kwdef mutable struct QdrantClusterTelemetry <: OpenAPI.APIModel
    enabled::Union{Nothing, Bool} = nothing
    status = nothing # spec type: Union{ Nothing, QdrantClusterStatusTelemetry }
    config = nothing # spec type: Union{ Nothing, QdrantClusterConfigTelemetry }

    function QdrantClusterTelemetry(enabled, status, config, )
        OpenAPI.validate_property(QdrantClusterTelemetry, Symbol("enabled"), enabled)
        OpenAPI.validate_property(QdrantClusterTelemetry, Symbol("status"), status)
        OpenAPI.validate_property(QdrantClusterTelemetry, Symbol("config"), config)
        return new(enabled, status, config, )
    end
end # type QdrantClusterTelemetry

const _property_types_QdrantClusterTelemetry = Dict{Symbol,String}(Symbol("enabled")=>"Bool", Symbol("status")=>"QdrantClusterStatusTelemetry", Symbol("config")=>"QdrantClusterConfigTelemetry", )
OpenAPI.property_type(::Type{ QdrantClusterTelemetry }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantClusterTelemetry[name]))}

function check_required(o::QdrantClusterTelemetry)
    o.enabled === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantClusterTelemetry }, name::Symbol, val)
end