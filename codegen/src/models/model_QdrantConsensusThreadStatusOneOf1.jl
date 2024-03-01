# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ConsensusThreadStatus_oneOf_1

    QdrantConsensusThreadStatusOneOf1(;
        consensus_thread_status=nothing,
    )

    - consensus_thread_status::String
"""
Base.@kwdef mutable struct QdrantConsensusThreadStatusOneOf1 <: OpenAPI.APIModel
    consensus_thread_status::Union{Nothing, String} = nothing

    function QdrantConsensusThreadStatusOneOf1(consensus_thread_status, )
        OpenAPI.validate_property(QdrantConsensusThreadStatusOneOf1, Symbol("consensus_thread_status"), consensus_thread_status)
        return new(consensus_thread_status, )
    end
end # type QdrantConsensusThreadStatusOneOf1

const _property_types_QdrantConsensusThreadStatusOneOf1 = Dict{Symbol,String}(Symbol("consensus_thread_status")=>"String", )
OpenAPI.property_type(::Type{ QdrantConsensusThreadStatusOneOf1 }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantConsensusThreadStatusOneOf1[name]))}

function check_required(o::QdrantConsensusThreadStatusOneOf1)
    o.consensus_thread_status === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantConsensusThreadStatusOneOf1 }, name::Symbol, val)
    if name === Symbol("consensus_thread_status")
        OpenAPI.validate_param(name, "QdrantConsensusThreadStatusOneOf1", :enum, val, ["stopped"])
    end
end