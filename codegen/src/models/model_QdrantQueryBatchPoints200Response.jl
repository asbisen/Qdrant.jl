# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""query_batch_points_200_response

    QdrantQueryBatchPoints200Response(;
        time=nothing,
        status=nothing,
        result=nothing,
    )

    - time::Float32 : Time spent to process this request
    - status::String
    - result::Vector{QdrantQueryResponse}
"""
Base.@kwdef mutable struct QdrantQueryBatchPoints200Response <: OpenAPI.APIModel
    time::Union{Nothing, Float32} = nothing
    status::Union{Nothing, String} = nothing
    result::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{QdrantQueryResponse} }

    function QdrantQueryBatchPoints200Response(time, status, result, )
        OpenAPI.validate_property(QdrantQueryBatchPoints200Response, Symbol("time"), time)
        OpenAPI.validate_property(QdrantQueryBatchPoints200Response, Symbol("status"), status)
        OpenAPI.validate_property(QdrantQueryBatchPoints200Response, Symbol("result"), result)
        return new(time, status, result, )
    end
end # type QdrantQueryBatchPoints200Response

const _property_types_QdrantQueryBatchPoints200Response = Dict{Symbol,String}(Symbol("time")=>"Float32", Symbol("status")=>"String", Symbol("result")=>"Vector{QdrantQueryResponse}", )
OpenAPI.property_type(::Type{ QdrantQueryBatchPoints200Response }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantQueryBatchPoints200Response[name]))}

function check_required(o::QdrantQueryBatchPoints200Response)
    true
end

function OpenAPI.validate_property(::Type{ QdrantQueryBatchPoints200Response }, name::Symbol, val)
    if name === Symbol("time")
        OpenAPI.validate_param(name, "QdrantQueryBatchPoints200Response", :format, val, "float")
    end
end
