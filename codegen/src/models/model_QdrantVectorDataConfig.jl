# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""VectorDataConfig
Config of single vector data storage

    QdrantVectorDataConfig(;
        size=nothing,
        distance=nothing,
        storage_type=nothing,
        index=nothing,
        quantization_config=nothing,
        multivector_config=nothing,
        datatype=nothing,
    )

    - size::Int64 : Size/dimensionality of the vectors used
    - distance::QdrantDistance
    - storage_type::QdrantVectorStorageType
    - index::QdrantIndexes
    - quantization_config::QdrantQuantizationConfig
    - multivector_config::QdrantMultiVectorConfig
    - datatype::QdrantVectorStorageDatatype
"""
Base.@kwdef mutable struct QdrantVectorDataConfig <: OpenAPI.APIModel
    size::Union{Nothing, Int64} = nothing
    distance = nothing # spec type: Union{ Nothing, QdrantDistance }
    storage_type = nothing # spec type: Union{ Nothing, QdrantVectorStorageType }
    index = nothing # spec type: Union{ Nothing, QdrantIndexes }
    quantization_config = nothing # spec type: Union{ Nothing, QdrantQuantizationConfig }
    multivector_config = nothing # spec type: Union{ Nothing, QdrantMultiVectorConfig }
    datatype = nothing # spec type: Union{ Nothing, QdrantVectorStorageDatatype }

    function QdrantVectorDataConfig(size, distance, storage_type, index, quantization_config, multivector_config, datatype, )
        OpenAPI.validate_property(QdrantVectorDataConfig, Symbol("size"), size)
        OpenAPI.validate_property(QdrantVectorDataConfig, Symbol("distance"), distance)
        OpenAPI.validate_property(QdrantVectorDataConfig, Symbol("storage_type"), storage_type)
        OpenAPI.validate_property(QdrantVectorDataConfig, Symbol("index"), index)
        OpenAPI.validate_property(QdrantVectorDataConfig, Symbol("quantization_config"), quantization_config)
        OpenAPI.validate_property(QdrantVectorDataConfig, Symbol("multivector_config"), multivector_config)
        OpenAPI.validate_property(QdrantVectorDataConfig, Symbol("datatype"), datatype)
        return new(size, distance, storage_type, index, quantization_config, multivector_config, datatype, )
    end
end # type QdrantVectorDataConfig

const _property_types_QdrantVectorDataConfig = Dict{Symbol,String}(Symbol("size")=>"Int64", Symbol("distance")=>"QdrantDistance", Symbol("storage_type")=>"QdrantVectorStorageType", Symbol("index")=>"QdrantIndexes", Symbol("quantization_config")=>"QdrantQuantizationConfig", Symbol("multivector_config")=>"QdrantMultiVectorConfig", Symbol("datatype")=>"QdrantVectorStorageDatatype", )
OpenAPI.property_type(::Type{ QdrantVectorDataConfig }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantVectorDataConfig[name]))}

function check_required(o::QdrantVectorDataConfig)
    o.size === nothing && (return false)
    o.distance === nothing && (return false)
    o.storage_type === nothing && (return false)
    o.index === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantVectorDataConfig }, name::Symbol, val)
    if name === Symbol("size")
        OpenAPI.validate_param(name, "QdrantVectorDataConfig", :format, val, "uint")
    end
    if name === Symbol("size")
        OpenAPI.validate_param(name, "QdrantVectorDataConfig", :minimum, val, 0, false)
    end
end
