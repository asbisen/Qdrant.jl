# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""DeleteVectorsOperation

    QdrantDeleteVectorsOperation(;
        delete_vectors=nothing,
    )

    - delete_vectors::QdrantDeleteVectors
"""
Base.@kwdef mutable struct QdrantDeleteVectorsOperation <: OpenAPI.APIModel
    delete_vectors = nothing # spec type: Union{ Nothing, QdrantDeleteVectors }

    function QdrantDeleteVectorsOperation(delete_vectors, )
        OpenAPI.validate_property(QdrantDeleteVectorsOperation, Symbol("delete_vectors"), delete_vectors)
        return new(delete_vectors, )
    end
end # type QdrantDeleteVectorsOperation

const _property_types_QdrantDeleteVectorsOperation = Dict{Symbol,String}(Symbol("delete_vectors")=>"QdrantDeleteVectors", )
OpenAPI.property_type(::Type{ QdrantDeleteVectorsOperation }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantDeleteVectorsOperation[name]))}

function check_required(o::QdrantDeleteVectorsOperation)
    o.delete_vectors === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantDeleteVectorsOperation }, name::Symbol, val)
end
