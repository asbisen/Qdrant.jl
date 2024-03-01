# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""P2pConfigTelemetry

    QdrantP2pConfigTelemetry(;
        connection_pool_size=nothing,
    )

    - connection_pool_size::Int64
"""
Base.@kwdef mutable struct QdrantP2pConfigTelemetry <: OpenAPI.APIModel
    connection_pool_size::Union{Nothing, Int64} = nothing

    function QdrantP2pConfigTelemetry(connection_pool_size, )
        OpenAPI.validate_property(QdrantP2pConfigTelemetry, Symbol("connection_pool_size"), connection_pool_size)
        return new(connection_pool_size, )
    end
end # type QdrantP2pConfigTelemetry

const _property_types_QdrantP2pConfigTelemetry = Dict{Symbol,String}(Symbol("connection_pool_size")=>"Int64", )
OpenAPI.property_type(::Type{ QdrantP2pConfigTelemetry }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantP2pConfigTelemetry[name]))}

function check_required(o::QdrantP2pConfigTelemetry)
    o.connection_pool_size === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantP2pConfigTelemetry }, name::Symbol, val)
    if name === Symbol("connection_pool_size")
        OpenAPI.validate_param(name, "QdrantP2pConfigTelemetry", :format, val, "uint")
    end
    if name === Symbol("connection_pool_size")
        OpenAPI.validate_param(name, "QdrantP2pConfigTelemetry", :minimum, val, 0, false)
    end
end
