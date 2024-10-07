using OpenAPI.Clients: Client

include("collection.jl")
export get_collections,
    get_collection,
    delete_collection,
    collection_exists,
    create_collection
