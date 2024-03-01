# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""NamedSparseVector
Sparse vector data with name

    QdrantNamedSparseVector(;
        name=nothing,
        vector=nothing,
    )

    - name::String : Name of vector data
    - vector::QdrantSparseVector
"""
Base.@kwdef mutable struct QdrantNamedSparseVector <: OpenAPI.APIModel
    name::Union{Nothing, String} = nothing
    vector = nothing # spec type: Union{ Nothing, QdrantSparseVector }

    function QdrantNamedSparseVector(name, vector, )
        OpenAPI.validate_property(QdrantNamedSparseVector, Symbol("name"), name)
        OpenAPI.validate_property(QdrantNamedSparseVector, Symbol("vector"), vector)
        return new(name, vector, )
    end
end # type QdrantNamedSparseVector

const _property_types_QdrantNamedSparseVector = Dict{Symbol,String}(Symbol("name")=>"String", Symbol("vector")=>"QdrantSparseVector", )
OpenAPI.property_type(::Type{ QdrantNamedSparseVector }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantNamedSparseVector[name]))}

function check_required(o::QdrantNamedSparseVector)
    o.name === nothing && (return false)
    o.vector === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QdrantNamedSparseVector }, name::Symbol, val)
end