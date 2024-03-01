# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ClusterConfigTelemetry

    QdrantClusterConfigTelemetry(;
        grpc_timeout_ms=nothing,
        p2p=nothing,
        consensus=nothing,
    )

    - grpc_timeout_ms::Int64
    - p2p::QdrantP2pConfigTelemetry
    - consensus::QdrantConsensusConfigTelemetry
"""
Base.@kwdef mutable struct QdrantClusterConfigTelemetry <: OpenAPI.APIModel
    grpc_timeout_ms::Union{Nothing, Int64} = nothing
    p2p = nothing # spec type: Union{ Nothing, QdrantP2pConfigTelemetry }
    consensus = nothing # spec type: Union{ Nothing, QdrantConsensusConfigTelemetry }

    function QdrantClusterConfigTelemetry(grpc_timeout_ms, p2p, consensus, )
        OpenAPI.validate_property(QdrantClusterConfigTelemetry, Symbol("grpc_timeout_ms"), grpc_timeout_ms)
        OpenAPI.validate_property(QdrantClusterConfigTelemetry, Symbol("p2p"), p2p)
        OpenAPI.validate_property(QdrantClusterConfigTelemetry, Symbol("consensus"), consensus)
        return new(grpc_timeout_ms, p2p, consensus, )
    end
end # type QdrantClusterConfigTelemetry

const _property_types_QdrantClusterConfigTelemetry = Dict{Symbol,String}(Symbol("grpc_timeout_ms")=>"Int64", Symbol("p2p")=>"QdrantP2pConfigTelemetry", Symbol("consensus")=>"QdrantConsensusConfigTelemetry", )
OpenAPI.property_type(::Type{ QdrantClusterConfigTelemetry }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantClusterConfigTelemetry[name]))}

function check_required(o::QdrantClusterConfigTelemetry)
    o.grpc_timeout_ms === nothing && (return false)
    o.p2p === nothing && (return false)
    o.consensus === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantClusterConfigTelemetry }, name::Symbol, val)
    if name === Symbol("grpc_timeout_ms")
        OpenAPI.validate_param(name, "QdrantClusterConfigTelemetry", :format, val, "uint64")
    end
    if name === Symbol("grpc_timeout_ms")
        OpenAPI.validate_param(name, "QdrantClusterConfigTelemetry", :minimum, val, 0, false)
    end
end
