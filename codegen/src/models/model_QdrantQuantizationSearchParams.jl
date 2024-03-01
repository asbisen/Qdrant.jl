# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""QuantizationSearchParams
Additional parameters of the search

    QdrantQuantizationSearchParams(;
        ignore=false,
        rescore=nothing,
        oversampling=nothing,
    )

    - ignore::Bool : If true, quantized vectors are ignored. Default is false.
    - rescore::Bool : If true, use original vectors to re-score top-k results. Might require more time in case if original vectors are stored on disk. If not set, qdrant decides automatically apply rescoring or not.
    - oversampling::Float64 : Oversampling factor for quantization. Default is 1.0.  Defines how many extra vectors should be pre-selected using quantized index, and then re-scored using original vectors.  For example, if &#x60;oversampling&#x60; is 2.4 and &#x60;limit&#x60; is 100, then 240 vectors will be pre-selected using quantized index, and then top-100 will be returned after re-scoring.
"""
Base.@kwdef mutable struct QdrantQuantizationSearchParams <: OpenAPI.APIModel
    ignore::Union{Nothing, Bool} = false
    rescore::Union{Nothing, Bool} = nothing
    oversampling::Union{Nothing, Float64} = nothing

    function QdrantQuantizationSearchParams(ignore, rescore, oversampling, )
        OpenAPI.validate_property(QdrantQuantizationSearchParams, Symbol("ignore"), ignore)
        OpenAPI.validate_property(QdrantQuantizationSearchParams, Symbol("rescore"), rescore)
        OpenAPI.validate_property(QdrantQuantizationSearchParams, Symbol("oversampling"), oversampling)
        return new(ignore, rescore, oversampling, )
    end
end # type QdrantQuantizationSearchParams

const _property_types_QdrantQuantizationSearchParams = Dict{Symbol,String}(Symbol("ignore")=>"Bool", Symbol("rescore")=>"Bool", Symbol("oversampling")=>"Float64", )
OpenAPI.property_type(::Type{ QdrantQuantizationSearchParams }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantQuantizationSearchParams[name]))}

function check_required(o::QdrantQuantizationSearchParams)
    true
end

function OpenAPI.validate_property(::Type{ QdrantQuantizationSearchParams }, name::Symbol, val)
    if name === Symbol("oversampling")
        OpenAPI.validate_param(name, "QdrantQuantizationSearchParams", :format, val, "double")
    end
    if name === Symbol("oversampling")
        OpenAPI.validate_param(name, "QdrantQuantizationSearchParams", :minimum, val, 1, false)
    end
end
