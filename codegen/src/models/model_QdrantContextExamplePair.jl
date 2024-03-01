# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ContextExamplePair

    QdrantContextExamplePair(;
        positive=nothing,
        negative=nothing,
    )

    - positive::QdrantRecommendExample
    - negative::QdrantRecommendExample
"""
Base.@kwdef mutable struct QdrantContextExamplePair <: OpenAPI.APIModel
    positive = nothing # spec type: Union{ Nothing, QdrantRecommendExample }
    negative = nothing # spec type: Union{ Nothing, QdrantRecommendExample }

    function QdrantContextExamplePair(positive, negative, )
        OpenAPI.validate_property(QdrantContextExamplePair, Symbol("positive"), positive)
        OpenAPI.validate_property(QdrantContextExamplePair, Symbol("negative"), negative)
        return new(positive, negative, )
    end
end # type QdrantContextExamplePair

const _property_types_QdrantContextExamplePair = Dict{Symbol,String}(Symbol("positive")=>"QdrantRecommendExample", Symbol("negative")=>"QdrantRecommendExample", )
OpenAPI.property_type(::Type{ QdrantContextExamplePair }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantContextExamplePair[name]))}

function check_required(o::QdrantContextExamplePair)
    o.positive === nothing && (return false)
    o.negative === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantContextExamplePair }, name::Symbol, val)
end
