# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""AbortTransferOperation

    QdrantAbortTransferOperation(;
        abort_transfer=nothing,
    )

    - abort_transfer::QdrantAbortShardTransfer
"""
Base.@kwdef mutable struct QdrantAbortTransferOperation <: OpenAPI.APIModel
    abort_transfer = nothing # spec type: Union{ Nothing, QdrantAbortShardTransfer }

    function QdrantAbortTransferOperation(abort_transfer, )
        OpenAPI.validate_property(QdrantAbortTransferOperation, Symbol("abort_transfer"), abort_transfer)
        return new(abort_transfer, )
    end
end # type QdrantAbortTransferOperation

const _property_types_QdrantAbortTransferOperation = Dict{Symbol,String}(Symbol("abort_transfer")=>"QdrantAbortShardTransfer", )
OpenAPI.property_type(::Type{ QdrantAbortTransferOperation }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantAbortTransferOperation[name]))}

function check_required(o::QdrantAbortTransferOperation)
    o.abort_transfer === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantAbortTransferOperation }, name::Symbol, val)
end
