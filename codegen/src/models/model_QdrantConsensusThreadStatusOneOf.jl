# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ConsensusThreadStatus_oneOf

    QdrantConsensusThreadStatusOneOf(;
        consensus_thread_status=nothing,
        last_update=nothing,
    )

    - consensus_thread_status::String
    - last_update::ZonedDateTime
"""
Base.@kwdef mutable struct QdrantConsensusThreadStatusOneOf <: OpenAPI.APIModel
    consensus_thread_status::Union{Nothing, String} = nothing
    last_update::Union{Nothing, ZonedDateTime} = nothing

    function QdrantConsensusThreadStatusOneOf(consensus_thread_status, last_update, )
        OpenAPI.validate_property(QdrantConsensusThreadStatusOneOf, Symbol("consensus_thread_status"), consensus_thread_status)
        OpenAPI.validate_property(QdrantConsensusThreadStatusOneOf, Symbol("last_update"), last_update)
        return new(consensus_thread_status, last_update, )
    end
end # type QdrantConsensusThreadStatusOneOf

const _property_types_QdrantConsensusThreadStatusOneOf = Dict{Symbol,String}(Symbol("consensus_thread_status")=>"String", Symbol("last_update")=>"ZonedDateTime", )
OpenAPI.property_type(::Type{ QdrantConsensusThreadStatusOneOf }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantConsensusThreadStatusOneOf[name]))}

function check_required(o::QdrantConsensusThreadStatusOneOf)
    o.consensus_thread_status === nothing && (return false)
    o.last_update === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantConsensusThreadStatusOneOf }, name::Symbol, val)
    if name === Symbol("consensus_thread_status")
        OpenAPI.validate_param(name, "QdrantConsensusThreadStatusOneOf", :enum, val, ["working"])
    end
    if name === Symbol("last_update")
        OpenAPI.validate_param(name, "QdrantConsensusThreadStatusOneOf", :format, val, "date-time")
    end
end
