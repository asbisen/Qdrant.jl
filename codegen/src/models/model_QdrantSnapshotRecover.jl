# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""SnapshotRecover

    QdrantSnapshotRecover(;
        location=nothing,
        priority=nothing,
    )

    - location::String : Examples: - URL &#x60;http://localhost:8080/collections/my_collection/snapshots/my_snapshot&#x60; - Local path &#x60;file:///qdrant/snapshots/test_collection-2022-08-04-10-49-10.snapshot&#x60;
    - priority::QdrantSnapshotPriority
"""
Base.@kwdef mutable struct QdrantSnapshotRecover <: OpenAPI.APIModel
    location::Union{Nothing, String} = nothing
    priority = nothing # spec type: Union{ Nothing, QdrantSnapshotPriority }

    function QdrantSnapshotRecover(location, priority, )
        OpenAPI.validate_property(QdrantSnapshotRecover, Symbol("location"), location)
        OpenAPI.validate_property(QdrantSnapshotRecover, Symbol("priority"), priority)
        return new(location, priority, )
    end
end # type QdrantSnapshotRecover

const _property_types_QdrantSnapshotRecover = Dict{Symbol,String}(Symbol("location")=>"String", Symbol("priority")=>"QdrantSnapshotPriority", )
OpenAPI.property_type(::Type{ QdrantSnapshotRecover }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantSnapshotRecover[name]))}

function check_required(o::QdrantSnapshotRecover)
    o.location === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantSnapshotRecover }, name::Symbol, val)
    if name === Symbol("location")
        OpenAPI.validate_param(name, "QdrantSnapshotRecover", :format, val, "uri")
    end
end
