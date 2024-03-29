# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""get_point_200_response

    QdrantGetPoint200Response(;
        time=nothing,
        status=nothing,
        result=nothing,
    )

    - time::Float32 : Time spent to process this request
    - status::String
    - result::QdrantRecord
"""
Base.@kwdef mutable struct QdrantGetPoint200Response <: OpenAPI.APIModel
    time::Union{Nothing, Float32} = nothing
    status::Union{Nothing, String} = nothing
    result = nothing # spec type: Union{ Nothing, QdrantRecord }

    function QdrantGetPoint200Response(time, status, result, )
        OpenAPI.validate_property(QdrantGetPoint200Response, Symbol("time"), time)
        OpenAPI.validate_property(QdrantGetPoint200Response, Symbol("status"), status)
        OpenAPI.validate_property(QdrantGetPoint200Response, Symbol("result"), result)
        return new(time, status, result, )
    end
end # type QdrantGetPoint200Response

const _property_types_QdrantGetPoint200Response = Dict{Symbol,String}(Symbol("time")=>"Float32", Symbol("status")=>"String", Symbol("result")=>"QdrantRecord", )
OpenAPI.property_type(::Type{ QdrantGetPoint200Response }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantGetPoint200Response[name]))}

function check_required(o::QdrantGetPoint200Response)
    true
end

function OpenAPI.validate_property(::Type{ QdrantGetPoint200Response }, name::Symbol, val)
    if name === Symbol("time")
        OpenAPI.validate_param(name, "QdrantGetPoint200Response", :format, val, "float")
    end
end
