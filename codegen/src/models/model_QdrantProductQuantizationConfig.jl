# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ProductQuantizationConfig

    QdrantProductQuantizationConfig(;
        compression=nothing,
        always_ram=nothing,
    )

    - compression::QdrantCompressionRatio
    - always_ram::Bool
"""
Base.@kwdef mutable struct QdrantProductQuantizationConfig <: OpenAPI.APIModel
    compression = nothing # spec type: Union{ Nothing, QdrantCompressionRatio }
    always_ram::Union{Nothing, Bool} = nothing

    function QdrantProductQuantizationConfig(compression, always_ram, )
        OpenAPI.validate_property(QdrantProductQuantizationConfig, Symbol("compression"), compression)
        OpenAPI.validate_property(QdrantProductQuantizationConfig, Symbol("always_ram"), always_ram)
        return new(compression, always_ram, )
    end
end # type QdrantProductQuantizationConfig

const _property_types_QdrantProductQuantizationConfig = Dict{Symbol,String}(Symbol("compression")=>"QdrantCompressionRatio", Symbol("always_ram")=>"Bool", )
OpenAPI.property_type(::Type{ QdrantProductQuantizationConfig }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantProductQuantizationConfig[name]))}

function check_required(o::QdrantProductQuantizationConfig)
    o.compression === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantProductQuantizationConfig }, name::Symbol, val)
end
