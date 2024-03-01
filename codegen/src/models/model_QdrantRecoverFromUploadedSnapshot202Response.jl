# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""recover_from_uploaded_snapshot_202_response

    QdrantRecoverFromUploadedSnapshot202Response(;
        time=nothing,
        status=nothing,
    )

    - time::Float32 : Time spent to process this request
    - status::String
"""
Base.@kwdef mutable struct QdrantRecoverFromUploadedSnapshot202Response <: OpenAPI.APIModel
    time::Union{Nothing, Float32} = nothing
    status::Union{Nothing, String} = nothing

    function QdrantRecoverFromUploadedSnapshot202Response(time, status, )
        OpenAPI.validate_property(QdrantRecoverFromUploadedSnapshot202Response, Symbol("time"), time)
        OpenAPI.validate_property(QdrantRecoverFromUploadedSnapshot202Response, Symbol("status"), status)
        return new(time, status, )
    end
end # type QdrantRecoverFromUploadedSnapshot202Response

const _property_types_QdrantRecoverFromUploadedSnapshot202Response = Dict{Symbol,String}(Symbol("time")=>"Float32", Symbol("status")=>"String", )
OpenAPI.property_type(::Type{ QdrantRecoverFromUploadedSnapshot202Response }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantRecoverFromUploadedSnapshot202Response[name]))}

function check_required(o::QdrantRecoverFromUploadedSnapshot202Response)
    true
end

function OpenAPI.validate_property(::Type{ QdrantRecoverFromUploadedSnapshot202Response }, name::Symbol, val)
    if name === Symbol("time")
        OpenAPI.validate_param(name, "QdrantRecoverFromUploadedSnapshot202Response", :format, val, "float")
    end
end