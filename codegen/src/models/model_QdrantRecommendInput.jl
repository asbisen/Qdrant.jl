# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""RecommendInput

    QdrantRecommendInput(;
        positive=nothing,
        negative=nothing,
        strategy=nothing,
    )

    - positive::Vector{QdrantVectorInput} : Look for vectors closest to the vectors from these points
    - negative::Vector{QdrantVectorInput} : Try to avoid vectors like the vector from these points
    - strategy::QdrantRecommendStrategy
"""
Base.@kwdef mutable struct QdrantRecommendInput <: OpenAPI.APIModel
    positive::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{QdrantVectorInput} }
    negative::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{QdrantVectorInput} }
    strategy = nothing # spec type: Union{ Nothing, QdrantRecommendStrategy }

    function QdrantRecommendInput(positive, negative, strategy, )
        OpenAPI.validate_property(QdrantRecommendInput, Symbol("positive"), positive)
        OpenAPI.validate_property(QdrantRecommendInput, Symbol("negative"), negative)
        OpenAPI.validate_property(QdrantRecommendInput, Symbol("strategy"), strategy)
        return new(positive, negative, strategy, )
    end
end # type QdrantRecommendInput

const _property_types_QdrantRecommendInput = Dict{Symbol,String}(Symbol("positive")=>"Vector{QdrantVectorInput}", Symbol("negative")=>"Vector{QdrantVectorInput}", Symbol("strategy")=>"QdrantRecommendStrategy", )
OpenAPI.property_type(::Type{ QdrantRecommendInput }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantRecommendInput[name]))}

function check_required(o::QdrantRecommendInput)
    true
end

function OpenAPI.validate_property(::Type{ QdrantRecommendInput }, name::Symbol, val)
end