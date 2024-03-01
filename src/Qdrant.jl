module Qdrant

include("../codegen/src/QdrantRestApi.jl")
using Reexport

@reexport using .QdrantRestApi


end # module Qdrant
