module Qdrant

import OpenAPI.Clients: Client

include("QdrantApi.jl")
import Qdrant: QdrantApi


export QdrantConnection
struct QdrantConnection
    client::Client
end

function QdrantConnection(url::String)
    cli = Client(url)
    QdrantConnection(cli)
end

QdrantConnection(host::String, port::Int) = QdrantConnection("http://$host:$port")


include("wrapper/Wrapper.jl")


end # module Qdrant
