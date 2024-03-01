# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""RunningEnvironmentTelemetry

    QdrantRunningEnvironmentTelemetry(;
        distribution=nothing,
        distribution_version=nothing,
        is_docker=nothing,
        cores=nothing,
        ram_size=nothing,
        disk_size=nothing,
        cpu_flags=nothing,
    )

    - distribution::String
    - distribution_version::String
    - is_docker::Bool
    - cores::Int64
    - ram_size::Int64
    - disk_size::Int64
    - cpu_flags::String
"""
Base.@kwdef mutable struct QdrantRunningEnvironmentTelemetry <: OpenAPI.APIModel
    distribution::Union{Nothing, String} = nothing
    distribution_version::Union{Nothing, String} = nothing
    is_docker::Union{Nothing, Bool} = nothing
    cores::Union{Nothing, Int64} = nothing
    ram_size::Union{Nothing, Int64} = nothing
    disk_size::Union{Nothing, Int64} = nothing
    cpu_flags::Union{Nothing, String} = nothing

    function QdrantRunningEnvironmentTelemetry(distribution, distribution_version, is_docker, cores, ram_size, disk_size, cpu_flags, )
        OpenAPI.validate_property(QdrantRunningEnvironmentTelemetry, Symbol("distribution"), distribution)
        OpenAPI.validate_property(QdrantRunningEnvironmentTelemetry, Symbol("distribution_version"), distribution_version)
        OpenAPI.validate_property(QdrantRunningEnvironmentTelemetry, Symbol("is_docker"), is_docker)
        OpenAPI.validate_property(QdrantRunningEnvironmentTelemetry, Symbol("cores"), cores)
        OpenAPI.validate_property(QdrantRunningEnvironmentTelemetry, Symbol("ram_size"), ram_size)
        OpenAPI.validate_property(QdrantRunningEnvironmentTelemetry, Symbol("disk_size"), disk_size)
        OpenAPI.validate_property(QdrantRunningEnvironmentTelemetry, Symbol("cpu_flags"), cpu_flags)
        return new(distribution, distribution_version, is_docker, cores, ram_size, disk_size, cpu_flags, )
    end
end # type QdrantRunningEnvironmentTelemetry

const _property_types_QdrantRunningEnvironmentTelemetry = Dict{Symbol,String}(Symbol("distribution")=>"String", Symbol("distribution_version")=>"String", Symbol("is_docker")=>"Bool", Symbol("cores")=>"Int64", Symbol("ram_size")=>"Int64", Symbol("disk_size")=>"Int64", Symbol("cpu_flags")=>"String", )
OpenAPI.property_type(::Type{ QdrantRunningEnvironmentTelemetry }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantRunningEnvironmentTelemetry[name]))}

function check_required(o::QdrantRunningEnvironmentTelemetry)
    o.is_docker === nothing && (return false)
    o.cpu_flags === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantRunningEnvironmentTelemetry }, name::Symbol, val)
    if name === Symbol("cores")
        OpenAPI.validate_param(name, "QdrantRunningEnvironmentTelemetry", :format, val, "uint")
    end
    if name === Symbol("cores")
        OpenAPI.validate_param(name, "QdrantRunningEnvironmentTelemetry", :minimum, val, 0, false)
    end
    if name === Symbol("ram_size")
        OpenAPI.validate_param(name, "QdrantRunningEnvironmentTelemetry", :format, val, "uint")
    end
    if name === Symbol("ram_size")
        OpenAPI.validate_param(name, "QdrantRunningEnvironmentTelemetry", :minimum, val, 0, false)
    end
    if name === Symbol("disk_size")
        OpenAPI.validate_param(name, "QdrantRunningEnvironmentTelemetry", :format, val, "uint")
    end
    if name === Symbol("disk_size")
        OpenAPI.validate_param(name, "QdrantRunningEnvironmentTelemetry", :minimum, val, 0, false)
    end
end
