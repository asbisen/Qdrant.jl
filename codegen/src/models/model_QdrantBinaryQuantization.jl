# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""BinaryQuantization

    QdrantBinaryQuantization(;
        binary=nothing,
    )

    - binary::QdrantBinaryQuantizationConfig
"""
Base.@kwdef mutable struct QdrantBinaryQuantization <: OpenAPI.APIModel
    binary = nothing # spec type: Union{ Nothing, QdrantBinaryQuantizationConfig }

    function QdrantBinaryQuantization(binary, )
        OpenAPI.validate_property(QdrantBinaryQuantization, Symbol("binary"), binary)
        return new(binary, )
    end
end # type QdrantBinaryQuantization

const _property_types_QdrantBinaryQuantization = Dict{Symbol,String}(Symbol("binary")=>"QdrantBinaryQuantizationConfig", )
OpenAPI.property_type(::Type{ QdrantBinaryQuantization }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantBinaryQuantization[name]))}

function check_required(o::QdrantBinaryQuantization)
    o.binary === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantBinaryQuantization }, name::Symbol, val)
end