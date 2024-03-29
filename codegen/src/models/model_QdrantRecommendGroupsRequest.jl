# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""RecommendGroupsRequest

    QdrantRecommendGroupsRequest(;
        shard_key=nothing,
        positive=nothing,
        negative=nothing,
        strategy=nothing,
        filter=nothing,
        params=nothing,
        with_payload=nothing,
        with_vector=nothing,
        score_threshold=nothing,
        var"using"=nothing,
        lookup_from=nothing,
        group_by=nothing,
        group_size=nothing,
        limit=nothing,
        with_lookup=nothing,
    )

    - shard_key::QdrantShardKeySelector
    - positive::Vector{QdrantRecommendExample} : Look for vectors closest to those
    - negative::Vector{QdrantRecommendExample} : Try to avoid vectors like this
    - strategy::QdrantRecommendStrategy
    - filter::QdrantFilter
    - params::QdrantSearchParams
    - with_payload::QdrantWithPayloadInterface
    - with_vector::QdrantWithVector
    - score_threshold::Float32 : Define a minimal score threshold for the result. If defined, less similar results will not be returned. Score of the returned result might be higher or smaller than the threshold depending on the Distance function used. E.g. for cosine similarity only higher scores will be returned.
    - var"using"::String
    - lookup_from::QdrantLookupLocation
    - group_by::String : Payload field to group by, must be a string or number field. If the field contains more than 1 value, all values will be used for grouping. One point can be in multiple groups.
    - group_size::Int64 : Maximum amount of points to return per group
    - limit::Int64 : Maximum amount of groups to return
    - with_lookup::QdrantWithLookupInterface
"""
Base.@kwdef mutable struct QdrantRecommendGroupsRequest <: OpenAPI.APIModel
    shard_key = nothing # spec type: Union{ Nothing, QdrantShardKeySelector }
    positive::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{QdrantRecommendExample} }
    negative::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{QdrantRecommendExample} }
    strategy = nothing # spec type: Union{ Nothing, QdrantRecommendStrategy }
    filter = nothing # spec type: Union{ Nothing, QdrantFilter }
    params = nothing # spec type: Union{ Nothing, QdrantSearchParams }
    with_payload = nothing # spec type: Union{ Nothing, QdrantWithPayloadInterface }
    with_vector = nothing # spec type: Union{ Nothing, QdrantWithVector }
    score_threshold::Union{Nothing, Float32} = nothing
    var"using"::Union{Nothing, String} = nothing
    lookup_from = nothing # spec type: Union{ Nothing, QdrantLookupLocation }
    group_by::Union{Nothing, String} = nothing
    group_size::Union{Nothing, Int64} = nothing
    limit::Union{Nothing, Int64} = nothing
    with_lookup = nothing # spec type: Union{ Nothing, QdrantWithLookupInterface }

    function QdrantRecommendGroupsRequest(shard_key, positive, negative, strategy, filter, params, with_payload, with_vector, score_threshold, var"using", lookup_from, group_by, group_size, limit, with_lookup, )
        OpenAPI.validate_property(QdrantRecommendGroupsRequest, Symbol("shard_key"), shard_key)
        OpenAPI.validate_property(QdrantRecommendGroupsRequest, Symbol("positive"), positive)
        OpenAPI.validate_property(QdrantRecommendGroupsRequest, Symbol("negative"), negative)
        OpenAPI.validate_property(QdrantRecommendGroupsRequest, Symbol("strategy"), strategy)
        OpenAPI.validate_property(QdrantRecommendGroupsRequest, Symbol("filter"), filter)
        OpenAPI.validate_property(QdrantRecommendGroupsRequest, Symbol("params"), params)
        OpenAPI.validate_property(QdrantRecommendGroupsRequest, Symbol("with_payload"), with_payload)
        OpenAPI.validate_property(QdrantRecommendGroupsRequest, Symbol("with_vector"), with_vector)
        OpenAPI.validate_property(QdrantRecommendGroupsRequest, Symbol("score_threshold"), score_threshold)
        OpenAPI.validate_property(QdrantRecommendGroupsRequest, Symbol("using"), var"using")
        OpenAPI.validate_property(QdrantRecommendGroupsRequest, Symbol("lookup_from"), lookup_from)
        OpenAPI.validate_property(QdrantRecommendGroupsRequest, Symbol("group_by"), group_by)
        OpenAPI.validate_property(QdrantRecommendGroupsRequest, Symbol("group_size"), group_size)
        OpenAPI.validate_property(QdrantRecommendGroupsRequest, Symbol("limit"), limit)
        OpenAPI.validate_property(QdrantRecommendGroupsRequest, Symbol("with_lookup"), with_lookup)
        return new(shard_key, positive, negative, strategy, filter, params, with_payload, with_vector, score_threshold, var"using", lookup_from, group_by, group_size, limit, with_lookup, )
    end
end # type QdrantRecommendGroupsRequest

const _property_types_QdrantRecommendGroupsRequest = Dict{Symbol,String}(Symbol("shard_key")=>"QdrantShardKeySelector", Symbol("positive")=>"Vector{QdrantRecommendExample}", Symbol("negative")=>"Vector{QdrantRecommendExample}", Symbol("strategy")=>"QdrantRecommendStrategy", Symbol("filter")=>"QdrantFilter", Symbol("params")=>"QdrantSearchParams", Symbol("with_payload")=>"QdrantWithPayloadInterface", Symbol("with_vector")=>"QdrantWithVector", Symbol("score_threshold")=>"Float32", Symbol("using")=>"String", Symbol("lookup_from")=>"QdrantLookupLocation", Symbol("group_by")=>"String", Symbol("group_size")=>"Int64", Symbol("limit")=>"Int64", Symbol("with_lookup")=>"QdrantWithLookupInterface", )
OpenAPI.property_type(::Type{ QdrantRecommendGroupsRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantRecommendGroupsRequest[name]))}

function check_required(o::QdrantRecommendGroupsRequest)
    o.group_by === nothing && (return false)
    o.group_size === nothing && (return false)
    o.limit === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantRecommendGroupsRequest }, name::Symbol, val)
    if name === Symbol("score_threshold")
        OpenAPI.validate_param(name, "QdrantRecommendGroupsRequest", :format, val, "float")
    end
    if name === Symbol("group_by")
        OpenAPI.validate_param(name, "QdrantRecommendGroupsRequest", :minLength, val, 1)
    end
    if name === Symbol("group_size")
        OpenAPI.validate_param(name, "QdrantRecommendGroupsRequest", :format, val, "uint32")
    end
    if name === Symbol("group_size")
        OpenAPI.validate_param(name, "QdrantRecommendGroupsRequest", :minimum, val, 1, false)
    end
    if name === Symbol("limit")
        OpenAPI.validate_param(name, "QdrantRecommendGroupsRequest", :format, val, "uint32")
    end
    if name === Symbol("limit")
        OpenAPI.validate_param(name, "QdrantRecommendGroupsRequest", :minimum, val, 1, false)
    end
end
