# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""RecommendQuery

    QdrantRecommendQuery(;
        recommend=nothing,
    )

    - recommend::QdrantRecommendInput
"""
Base.@kwdef mutable struct QdrantRecommendQuery <: OpenAPI.APIModel
    recommend = nothing # spec type: Union{ Nothing, QdrantRecommendInput }

    function QdrantRecommendQuery(recommend, )
        OpenAPI.validate_property(QdrantRecommendQuery, Symbol("recommend"), recommend)
        return new(recommend, )
    end
end # type QdrantRecommendQuery

const _property_types_QdrantRecommendQuery = Dict{Symbol,String}(Symbol("recommend")=>"QdrantRecommendInput", )
OpenAPI.property_type(::Type{ QdrantRecommendQuery }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantRecommendQuery[name]))}

function check_required(o::QdrantRecommendQuery)
    o.recommend === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantRecommendQuery }, name::Symbol, val)
end
