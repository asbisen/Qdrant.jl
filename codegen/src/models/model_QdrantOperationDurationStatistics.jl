# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""OperationDurationStatistics

    QdrantOperationDurationStatistics(;
        count=nothing,
        fail_count=nothing,
        avg_duration_micros=nothing,
        min_duration_micros=nothing,
        max_duration_micros=nothing,
        total_duration_micros=nothing,
        last_responded=nothing,
    )

    - count::Int64
    - fail_count::Int64
    - avg_duration_micros::Float32 : The average time taken by 128 latest operations, calculated as a weighted mean.
    - min_duration_micros::Float32 : The minimum duration of the operations across all the measurements.
    - max_duration_micros::Float32 : The maximum duration of the operations across all the measurements.
    - total_duration_micros::Int64 : The total duration of all operations in microseconds.
    - last_responded::ZonedDateTime
"""
Base.@kwdef mutable struct QdrantOperationDurationStatistics <: OpenAPI.APIModel
    count::Union{Nothing, Int64} = nothing
    fail_count::Union{Nothing, Int64} = nothing
    avg_duration_micros::Union{Nothing, Float32} = nothing
    min_duration_micros::Union{Nothing, Float32} = nothing
    max_duration_micros::Union{Nothing, Float32} = nothing
    total_duration_micros::Union{Nothing, Int64} = nothing
    last_responded::Union{Nothing, ZonedDateTime} = nothing

    function QdrantOperationDurationStatistics(count, fail_count, avg_duration_micros, min_duration_micros, max_duration_micros, total_duration_micros, last_responded, )
        OpenAPI.validate_property(QdrantOperationDurationStatistics, Symbol("count"), count)
        OpenAPI.validate_property(QdrantOperationDurationStatistics, Symbol("fail_count"), fail_count)
        OpenAPI.validate_property(QdrantOperationDurationStatistics, Symbol("avg_duration_micros"), avg_duration_micros)
        OpenAPI.validate_property(QdrantOperationDurationStatistics, Symbol("min_duration_micros"), min_duration_micros)
        OpenAPI.validate_property(QdrantOperationDurationStatistics, Symbol("max_duration_micros"), max_duration_micros)
        OpenAPI.validate_property(QdrantOperationDurationStatistics, Symbol("total_duration_micros"), total_duration_micros)
        OpenAPI.validate_property(QdrantOperationDurationStatistics, Symbol("last_responded"), last_responded)
        return new(count, fail_count, avg_duration_micros, min_duration_micros, max_duration_micros, total_duration_micros, last_responded, )
    end
end # type QdrantOperationDurationStatistics

const _property_types_QdrantOperationDurationStatistics = Dict{Symbol,String}(Symbol("count")=>"Int64", Symbol("fail_count")=>"Int64", Symbol("avg_duration_micros")=>"Float32", Symbol("min_duration_micros")=>"Float32", Symbol("max_duration_micros")=>"Float32", Symbol("total_duration_micros")=>"Int64", Symbol("last_responded")=>"ZonedDateTime", )
OpenAPI.property_type(::Type{ QdrantOperationDurationStatistics }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantOperationDurationStatistics[name]))}

function check_required(o::QdrantOperationDurationStatistics)
    o.count === nothing && (return false)
    o.total_duration_micros === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantOperationDurationStatistics }, name::Symbol, val)
    if name === Symbol("count")
        OpenAPI.validate_param(name, "QdrantOperationDurationStatistics", :format, val, "uint")
    end
    if name === Symbol("count")
        OpenAPI.validate_param(name, "QdrantOperationDurationStatistics", :minimum, val, 0, false)
    end
    if name === Symbol("fail_count")
        OpenAPI.validate_param(name, "QdrantOperationDurationStatistics", :format, val, "uint")
    end
    if name === Symbol("fail_count")
        OpenAPI.validate_param(name, "QdrantOperationDurationStatistics", :minimum, val, 0, false)
    end
    if name === Symbol("avg_duration_micros")
        OpenAPI.validate_param(name, "QdrantOperationDurationStatistics", :format, val, "float")
    end
    if name === Symbol("min_duration_micros")
        OpenAPI.validate_param(name, "QdrantOperationDurationStatistics", :format, val, "float")
    end
    if name === Symbol("max_duration_micros")
        OpenAPI.validate_param(name, "QdrantOperationDurationStatistics", :format, val, "float")
    end
    if name === Symbol("total_duration_micros")
        OpenAPI.validate_param(name, "QdrantOperationDurationStatistics", :format, val, "uint64")
    end
    if name === Symbol("total_duration_micros")
        OpenAPI.validate_param(name, "QdrantOperationDurationStatistics", :minimum, val, 0, false)
    end
    if name === Symbol("last_responded")
        OpenAPI.validate_param(name, "QdrantOperationDurationStatistics", :format, val, "date-time")
    end
end
