# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""SparseIndexParams
Configuration for sparse inverted index.

    QdrantSparseIndexParams(;
        full_scan_threshold=nothing,
        on_disk=nothing,
        datatype=nothing,
    )

    - full_scan_threshold::Int64 : We prefer a full scan search upto (excluding) this number of vectors.  Note: this is number of vectors, not KiloBytes.
    - on_disk::Bool : Store index on disk. If set to false, the index will be stored in RAM. Default: false
    - datatype::QdrantDatatype
"""
Base.@kwdef mutable struct QdrantSparseIndexParams <: OpenAPI.APIModel
    full_scan_threshold::Union{Nothing, Int64} = nothing
    on_disk::Union{Nothing, Bool} = nothing
    datatype = nothing # spec type: Union{ Nothing, QdrantDatatype }

    function QdrantSparseIndexParams(full_scan_threshold, on_disk, datatype, )
        OpenAPI.validate_property(QdrantSparseIndexParams, Symbol("full_scan_threshold"), full_scan_threshold)
        OpenAPI.validate_property(QdrantSparseIndexParams, Symbol("on_disk"), on_disk)
        OpenAPI.validate_property(QdrantSparseIndexParams, Symbol("datatype"), datatype)
        return new(full_scan_threshold, on_disk, datatype, )
    end
end # type QdrantSparseIndexParams

const _property_types_QdrantSparseIndexParams = Dict{Symbol,String}(Symbol("full_scan_threshold")=>"Int64", Symbol("on_disk")=>"Bool", Symbol("datatype")=>"QdrantDatatype", )
OpenAPI.property_type(::Type{ QdrantSparseIndexParams }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantSparseIndexParams[name]))}

function check_required(o::QdrantSparseIndexParams)
    true
end

function OpenAPI.validate_property(::Type{ QdrantSparseIndexParams }, name::Symbol, val)
    if name === Symbol("full_scan_threshold")
        OpenAPI.validate_param(name, "QdrantSparseIndexParams", :format, val, "uint")
    end
    if name === Symbol("full_scan_threshold")
        OpenAPI.validate_param(name, "QdrantSparseIndexParams", :minimum, val, 0, false)
    end
end
