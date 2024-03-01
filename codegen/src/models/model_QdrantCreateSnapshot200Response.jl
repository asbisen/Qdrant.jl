# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""create_snapshot_200_response

    QdrantCreateSnapshot200Response(;
        time=nothing,
        status=nothing,
        result=nothing,
    )

    - time::Float32 : Time spent to process this request
    - status::String
    - result::QdrantSnapshotDescription
"""
Base.@kwdef mutable struct QdrantCreateSnapshot200Response <: OpenAPI.APIModel
    time::Union{Nothing, Float32} = nothing
    status::Union{Nothing, String} = nothing
    result = nothing # spec type: Union{ Nothing, QdrantSnapshotDescription }

    function QdrantCreateSnapshot200Response(time, status, result, )
        OpenAPI.validate_property(QdrantCreateSnapshot200Response, Symbol("time"), time)
        OpenAPI.validate_property(QdrantCreateSnapshot200Response, Symbol("status"), status)
        OpenAPI.validate_property(QdrantCreateSnapshot200Response, Symbol("result"), result)
        return new(time, status, result, )
    end
end # type QdrantCreateSnapshot200Response

const _property_types_QdrantCreateSnapshot200Response = Dict{Symbol,String}(Symbol("time")=>"Float32", Symbol("status")=>"String", Symbol("result")=>"QdrantSnapshotDescription", )
OpenAPI.property_type(::Type{ QdrantCreateSnapshot200Response }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantCreateSnapshot200Response[name]))}

function check_required(o::QdrantCreateSnapshot200Response)
    true
end

function OpenAPI.validate_property(::Type{ QdrantCreateSnapshot200Response }, name::Symbol, val)
    if name === Symbol("time")
        OpenAPI.validate_param(name, "QdrantCreateSnapshot200Response", :format, val, "float")
    end
end