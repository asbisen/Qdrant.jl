module Qdrant
import OpenAPI.Clients: Client


# import the generated OpenAPI client code
include("../codegen/src/QdrantRestApi.jl")
using Reexport
@reexport using .QdrantRestApi


export QdrantConnection
struct QdrantConnection
    client::Client
end

function QdrantConnection(url::String)
    cli = Client(url)
    QdrantConnection(cli)
end

QdrantConnection(host::String, port::Int) = QdrantConnection("http://$host:$port")


include("wrapper/wrapper.jl")


end # module Qdrant
