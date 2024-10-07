# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""CollectionInfo
Current statistics and configuration of the collection

    QdrantCollectionInfo(;
        status=nothing,
        optimizer_status=nothing,
        vectors_count=nothing,
        indexed_vectors_count=nothing,
        points_count=nothing,
        segments_count=nothing,
        config=nothing,
        payload_schema=nothing,
    )

    - status::QdrantCollectionStatus
    - optimizer_status::QdrantOptimizersStatus
    - vectors_count::Int64 : DEPRECATED: Approximate number of vectors in collection. All vectors in collection are available for querying. Calculated as &#x60;points_count x vectors_per_point&#x60;. Where &#x60;vectors_per_point&#x60; is a number of named vectors in schema.
    - indexed_vectors_count::Int64 : Approximate number of indexed vectors in the collection. Indexed vectors in large segments are faster to query, as it is stored in a specialized vector index.
    - points_count::Int64 : Approximate number of points (vectors + payloads) in collection. Each point could be accessed by unique id.
    - segments_count::Int64 : Number of segments in collection. Each segment has independent vector as payload indexes
    - config::QdrantCollectionConfig
    - payload_schema::Dict{String, QdrantPayloadIndexInfo} : Types of stored payload
"""
Base.@kwdef mutable struct QdrantCollectionInfo <: OpenAPI.APIModel
    status = nothing # spec type: Union{ Nothing, QdrantCollectionStatus }
    optimizer_status = nothing # spec type: Union{ Nothing, QdrantOptimizersStatus }
    vectors_count::Union{Nothing, Int64} = nothing
    indexed_vectors_count::Union{Nothing, Int64} = nothing
    points_count::Union{Nothing, Int64} = nothing
    segments_count::Union{Nothing, Int64} = nothing
    config = nothing # spec type: Union{ Nothing, QdrantCollectionConfig }
    payload_schema::Union{Nothing, Dict} = nothing # spec type: Union{ Nothing, Dict{String, QdrantPayloadIndexInfo} }

    function QdrantCollectionInfo(status, optimizer_status, vectors_count, indexed_vectors_count, points_count, segments_count, config, payload_schema, )
        OpenAPI.validate_property(QdrantCollectionInfo, Symbol("status"), status)
        OpenAPI.validate_property(QdrantCollectionInfo, Symbol("optimizer_status"), optimizer_status)
        OpenAPI.validate_property(QdrantCollectionInfo, Symbol("vectors_count"), vectors_count)
        OpenAPI.validate_property(QdrantCollectionInfo, Symbol("indexed_vectors_count"), indexed_vectors_count)
        OpenAPI.validate_property(QdrantCollectionInfo, Symbol("points_count"), points_count)
        OpenAPI.validate_property(QdrantCollectionInfo, Symbol("segments_count"), segments_count)
        OpenAPI.validate_property(QdrantCollectionInfo, Symbol("config"), config)
        OpenAPI.validate_property(QdrantCollectionInfo, Symbol("payload_schema"), payload_schema)
        return new(status, optimizer_status, vectors_count, indexed_vectors_count, points_count, segments_count, config, payload_schema, )
    end
end # type QdrantCollectionInfo

const _property_types_QdrantCollectionInfo = Dict{Symbol,String}(Symbol("status")=>"QdrantCollectionStatus", Symbol("optimizer_status")=>"QdrantOptimizersStatus", Symbol("vectors_count")=>"Int64", Symbol("indexed_vectors_count")=>"Int64", Symbol("points_count")=>"Int64", Symbol("segments_count")=>"Int64", Symbol("config")=>"QdrantCollectionConfig", Symbol("payload_schema")=>"Dict{String, QdrantPayloadIndexInfo}", )
OpenAPI.property_type(::Type{ QdrantCollectionInfo }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantCollectionInfo[name]))}

function check_required(o::QdrantCollectionInfo)
    o.status === nothing && (return false)
    o.optimizer_status === nothing && (return false)
    o.segments_count === nothing && (return false)
    o.config === nothing && (return false)
    o.payload_schema === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantCollectionInfo }, name::Symbol, val)
    if name === Symbol("vectors_count")
        OpenAPI.validate_param(name, "QdrantCollectionInfo", :format, val, "uint")
    end
    if name === Symbol("vectors_count")
        OpenAPI.validate_param(name, "QdrantCollectionInfo", :minimum, val, 0, false)
    end
    if name === Symbol("indexed_vectors_count")
        OpenAPI.validate_param(name, "QdrantCollectionInfo", :format, val, "uint")
    end
    if name === Symbol("indexed_vectors_count")
        OpenAPI.validate_param(name, "QdrantCollectionInfo", :minimum, val, 0, false)
    end
    if name === Symbol("points_count")
        OpenAPI.validate_param(name, "QdrantCollectionInfo", :format, val, "uint")
    end
    if name === Symbol("points_count")
        OpenAPI.validate_param(name, "QdrantCollectionInfo", :minimum, val, 0, false)
    end
    if name === Symbol("segments_count")
        OpenAPI.validate_param(name, "QdrantCollectionInfo", :format, val, "uint")
    end
    if name === Symbol("segments_count")
        OpenAPI.validate_param(name, "QdrantCollectionInfo", :minimum, val, 0, false)
    end
end
