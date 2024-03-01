# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ProductQuantization

    QdrantProductQuantization(;
        product=nothing,
    )

    - product::QdrantProductQuantizationConfig
"""
Base.@kwdef mutable struct QdrantProductQuantization <: OpenAPI.APIModel
    product = nothing # spec type: Union{ Nothing, QdrantProductQuantizationConfig }

    function QdrantProductQuantization(product, )
        OpenAPI.validate_property(QdrantProductQuantization, Symbol("product"), product)
        return new(product, )
    end
end # type QdrantProductQuantization

const _property_types_QdrantProductQuantization = Dict{Symbol,String}(Symbol("product")=>"QdrantProductQuantizationConfig", )
OpenAPI.property_type(::Type{ QdrantProductQuantization }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantProductQuantization[name]))}

function check_required(o::QdrantProductQuantization)
    o.product === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantProductQuantization }, name::Symbol, val)
end