# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""Prefetch

    QdrantPrefetch(;
        prefetch=nothing,
        query=nothing,
        var"using"=nothing,
        filter=nothing,
        params=nothing,
        score_threshold=nothing,
        limit=nothing,
        lookup_from=nothing,
    )

    - prefetch::QdrantPrefetchPrefetch
    - query::QdrantQueryInterface
    - var"using"::String : Define which vector name to use for querying. If missing, the default vector is used.
    - filter::QdrantFilter
    - params::QdrantSearchParams
    - score_threshold::Float32 : Return points with scores better than this threshold.
    - limit::Int64 : Max number of points to return. Default is 10.
    - lookup_from::QdrantLookupLocation
"""
Base.@kwdef mutable struct QdrantPrefetch <: OpenAPI.APIModel
    prefetch = nothing # spec type: Union{ Nothing, QdrantPrefetchPrefetch }
    query = nothing # spec type: Union{ Nothing, QdrantQueryInterface }
    var"using"::Union{Nothing, String} = nothing
    filter = nothing # spec type: Union{ Nothing, QdrantFilter }
    params = nothing # spec type: Union{ Nothing, QdrantSearchParams }
    score_threshold::Union{Nothing, Float32} = nothing
    limit::Union{Nothing, Int64} = nothing
    lookup_from = nothing # spec type: Union{ Nothing, QdrantLookupLocation }

    function QdrantPrefetch(prefetch, query, var"using", filter, params, score_threshold, limit, lookup_from, )
        OpenAPI.validate_property(QdrantPrefetch, Symbol("prefetch"), prefetch)
        OpenAPI.validate_property(QdrantPrefetch, Symbol("query"), query)
        OpenAPI.validate_property(QdrantPrefetch, Symbol("using"), var"using")
        OpenAPI.validate_property(QdrantPrefetch, Symbol("filter"), filter)
        OpenAPI.validate_property(QdrantPrefetch, Symbol("params"), params)
        OpenAPI.validate_property(QdrantPrefetch, Symbol("score_threshold"), score_threshold)
        OpenAPI.validate_property(QdrantPrefetch, Symbol("limit"), limit)
        OpenAPI.validate_property(QdrantPrefetch, Symbol("lookup_from"), lookup_from)
        return new(prefetch, query, var"using", filter, params, score_threshold, limit, lookup_from, )
    end
end # type QdrantPrefetch

const _property_types_QdrantPrefetch = Dict{Symbol,String}(Symbol("prefetch")=>"QdrantPrefetchPrefetch", Symbol("query")=>"QdrantQueryInterface", Symbol("using")=>"String", Symbol("filter")=>"QdrantFilter", Symbol("params")=>"QdrantSearchParams", Symbol("score_threshold")=>"Float32", Symbol("limit")=>"Int64", Symbol("lookup_from")=>"QdrantLookupLocation", )
OpenAPI.property_type(::Type{ QdrantPrefetch }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantPrefetch[name]))}

function check_required(o::QdrantPrefetch)
    true
end

function OpenAPI.validate_property(::Type{ QdrantPrefetch }, name::Symbol, val)
    if name === Symbol("score_threshold")
        OpenAPI.validate_param(name, "QdrantPrefetch", :format, val, "float")
    end
    if name === Symbol("limit")
        OpenAPI.validate_param(name, "QdrantPrefetch", :format, val, "uint")
    end
    if name === Symbol("limit")
        OpenAPI.validate_param(name, "QdrantPrefetch", :minimum, val, 1, false)
    end
end
