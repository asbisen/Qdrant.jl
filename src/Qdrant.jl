module Qdrant

include("../codegen/src/RestApi.jl")
using Reexport

@reexport using .RestApi


end # module Qdrant
