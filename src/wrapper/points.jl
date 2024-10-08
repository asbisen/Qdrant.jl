using JSON3
using OpenAPI
using OpenAPI.Clients: Client
using Qdrant


"""
    upsert_points(connection::QdrantConnection, collection_name::String, points::Vector{QdrantRestApi.QdrantPointStruct})

Upserts a list of points into a specified Qdrant collection.

# Arguments
- `connection::QdrantConnection`: The connection object to the Qdrant database.
- `collection_name::String`: The name of the collection where points will be upserted.
- `points::Vector{QdrantRestApi.QdrantPointStruct}`: A vector containing the points to be upserted.

# Returns
- A tuple containing:
  - `time`: The time taken by the operation.
  - `status`: The status of the operation, with error details if applicable.
  - `result`: The result of the operation, if successful; otherwise `nothing`.

# Throws
- An error if the operation fails with a message containing the exception details.
"""
function upsert_points(connection::QdrantConnection, collection_name::String, points::Vector{QdrantRestApi.QdrantPointStruct})
    api = QdrantRestApi.PointsApi(connection.client)

    # Encapsulate points in a QdrantPointsList
    point_list = QdrantRestApi.QdrantPointsList(points=points)

    # Define operations for insertion
    insert_operations = QdrantRestApi.QdrantPointInsertOperations(point_list)

    try
        # Perform the upsert operation
        response, _ = QdrantRestApi.upsert_points(api, collection_name, qdrant_point_insert_operations=insert_operations)

        # Handle response based on its type
        if isa(response, QdrantRestApi.QdrantCreateFieldIndex200Response)
            return (time=response.time, status=response.status, result=response.result)
        elseif isa(response, QdrantRestApi.QdrantErrorResponse)
            return (time=response.time, status=Dict("error" => response.status.error), result=nothing)
        else
            error("Unexpected response type: $(typeof(response))")
        end
    catch e
        @error "Failed to create collection" exception = (e, catch_backtrace())
        rethrow(e)
    end
end



"""
    search_points(connection::QdrantConnection, collection_name::String,
                  query::QdrantRestApi.QdrantSearchRequest;
                  consistency::QdrantRestApi.QdrantReadConsistency = QdrantReadConsistency())

Searches for points in a specified Qdrant collection based on the given query.

# Arguments
- `connection::QdrantConnection`: The connection object to the Qdrant database.
- `collection_name::String`: The name of the collection to search in.
- `query::QdrantRestApi.QdrantSearchRequest`: The search query.
- `consistency::QdrantRestApi.QdrantReadConsistency`: The read consistency level (default: QdrantReadConsistency("majority")).

# Returns
- A tuple containing:
  - `time`: The time taken by the operation.
  - `status`: The status of the operation, with error details if applicable.
  - `result`: The search results if successful; otherwise `nothing`.

# Throws
- An error if the operation fails with a message containing the exception details.
"""
function search_points(connection::QdrantConnection, collection_name::String,
    query::QdrantRestApi.QdrantSearchRequest;
    consistency::QdrantRestApi.QdrantReadConsistency = QdrantReadConsistency() )

    api = QdrantRestApi.PointsApi(connection.client)

    try
        response, _ = QdrantRestApi.search_points(api, collection_name, qdrant_search_request=query)

        if isa(response, QdrantRestApi.QdrantSearchPoints200Response)
            return (time=response.time, status=response.status, result=response.result)
        elseif isa(response, QdrantRestApi.QdrantErrorResponse)
            return (time=response.time, status=Dict("error" => response.status.error), result=nothing)
        else
            error("Unexpected response type: $(typeof(response))")
        end
    catch e
        @error "Failed to search points" exception = (e, catch_backtrace())
        rethrow(e)
    end
end
