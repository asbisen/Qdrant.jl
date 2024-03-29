# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""Filter

    QdrantFilter(;
        should=nothing,
        must=nothing,
        must_not=nothing,
    )

    - should::Vector{QdrantCondition} : At least one of those conditions should match
    - must::Vector{QdrantCondition} : All conditions must match
    - must_not::Vector{QdrantCondition} : All conditions must NOT match
"""
Base.@kwdef mutable struct QdrantFilter <: OpenAPI.APIModel
    should::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{QdrantCondition} }
    must::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{QdrantCondition} }
    must_not::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{QdrantCondition} }

    function QdrantFilter(should, must, must_not, )
        OpenAPI.validate_property(QdrantFilter, Symbol("should"), should)
        OpenAPI.validate_property(QdrantFilter, Symbol("must"), must)
        OpenAPI.validate_property(QdrantFilter, Symbol("must_not"), must_not)
        return new(should, must, must_not, )
    end
end # type QdrantFilter

const _property_types_QdrantFilter = Dict{Symbol,String}(Symbol("should")=>"Vector{QdrantCondition}", Symbol("must")=>"Vector{QdrantCondition}", Symbol("must_not")=>"Vector{QdrantCondition}", )
OpenAPI.property_type(::Type{ QdrantFilter }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QdrantFilter[name]))}

function check_required(o::QdrantFilter)
    true
end

function OpenAPI.validate_property(::Type{ QdrantFilter }, name::Symbol, val)
end
