# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""RestartTransferOperation

    QdrantRestartTransferOperation(;
        restart_transfer=nothing,
    )

    - restart_transfer::QdrantRestartTransfer
"""
Base.@kwdef mutable struct QdrantRestartTransferOperation <: OpenAPI.APIModel
    restart_transfer = nothing # spec type: Union{ Nothing, QdrantRestartTransfer }

    function QdrantRestartTransferOperation(restart_transfer, )
        OpenAPI.validate_property(QdrantRestartTransferOperation, Symbol("restart_transfer"), restart_transfer)
        return new(restart_transfer, )
    end
end # type QdrantRestartTransferOperation

const _property_types_QdrantRestartTransferOperation = Dict{Symbol,String}(Symbol("restart_transfer")=>"QdrantRestartTransfer", )
OpenAPI.property_type(::Type{ QdrantRestartTransferOperation }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantRestartTransferOperation[name]))}

function check_required(o::QdrantRestartTransferOperation)
    o.restart_transfer === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantRestartTransferOperation }, name::Symbol, val)
end
