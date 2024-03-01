# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""search_points_200_response

    QdrantSearchPoints200Response(;
        time=nothing,
        status=nothing,
        result=nothing,
    )

    - time::Float32 : Time spent to process this request
    - status::String
    - result::Vector{QdrantScoredPoint}
"""
Base.@kwdef mutable struct QdrantSearchPoints200Response <: OpenAPI.APIModel
    time::Union{Nothing, Float32} = nothing
    status::Union{Nothing, String} = nothing
    result::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{QdrantScoredPoint} }

    function QdrantSearchPoints200Response(time, status, result, )
        OpenAPI.validate_property(QdrantSearchPoints200Response, Symbol("time"), time)
        OpenAPI.validate_property(QdrantSearchPoints200Response, Symbol("status"), status)
        OpenAPI.validate_property(QdrantSearchPoints200Response, Symbol("result"), result)
        return new(time, status, result, )
    end
end # type QdrantSearchPoints200Response

const _property_types_QdrantSearchPoints200Response = Dict{Symbol,String}(Symbol("time")=>"Float32", Symbol("status")=>"String", Symbol("result")=>"Vector{QdrantScoredPoint}", )
OpenAPI.property_type(::Type{ QdrantSearchPoints200Response }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantSearchPoints200Response[name]))}

function check_required(o::QdrantSearchPoints200Response)
    true
end

function OpenAPI.validate_property(::Type{ QdrantSearchPoints200Response }, name::Symbol, val)
    if name === Symbol("time")
        OpenAPI.validate_param(name, "QdrantSearchPoints200Response", :format, val, "float")
    end
end