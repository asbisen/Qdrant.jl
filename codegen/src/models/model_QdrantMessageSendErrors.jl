# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""MessageSendErrors
Message send failures for a particular peer

    QdrantMessageSendErrors(;
        count=nothing,
        latest_error=nothing,
    )

    - count::Int64
    - latest_error::String
"""
Base.@kwdef mutable struct QdrantMessageSendErrors <: OpenAPI.APIModel
    count::Union{Nothing, Int64} = nothing
    latest_error::Union{Nothing, String} = nothing

    function QdrantMessageSendErrors(count, latest_error, )
        OpenAPI.validate_property(QdrantMessageSendErrors, Symbol("count"), count)
        OpenAPI.validate_property(QdrantMessageSendErrors, Symbol("latest_error"), latest_error)
        return new(count, latest_error, )
    end
end # type QdrantMessageSendErrors

const _property_types_QdrantMessageSendErrors = Dict{Symbol,String}(Symbol("count")=>"Int64", Symbol("latest_error")=>"String", )
OpenAPI.property_type(::Type{ QdrantMessageSendErrors }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantMessageSendErrors[name]))}

function check_required(o::QdrantMessageSendErrors)
    o.count === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantMessageSendErrors }, name::Symbol, val)
    if name === Symbol("count")
        OpenAPI.validate_param(name, "QdrantMessageSendErrors", :format, val, "uint")
    end
    if name === Symbol("count")
        OpenAPI.validate_param(name, "QdrantMessageSendErrors", :minimum, val, 0, false)
    end
end