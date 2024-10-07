# PointsApi

All URIs are relative to *http://localhost:6333*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batch_update**](PointsApi.md#batch_update) | **POST** /collections/{collection_name}/points/batch | Batch update points
[**clear_payload**](PointsApi.md#clear_payload) | **POST** /collections/{collection_name}/points/payload/clear | Clear payload
[**count_points**](PointsApi.md#count_points) | **POST** /collections/{collection_name}/points/count | Count points
[**delete_payload**](PointsApi.md#delete_payload) | **POST** /collections/{collection_name}/points/payload/delete | Delete payload
[**delete_points**](PointsApi.md#delete_points) | **POST** /collections/{collection_name}/points/delete | Delete points
[**delete_vectors**](PointsApi.md#delete_vectors) | **POST** /collections/{collection_name}/points/vectors/delete | Delete vectors
[**discover_batch_points**](PointsApi.md#discover_batch_points) | **POST** /collections/{collection_name}/points/discover/batch | Discover batch points
[**discover_points**](PointsApi.md#discover_points) | **POST** /collections/{collection_name}/points/discover | Discover points
[**get_point**](PointsApi.md#get_point) | **GET** /collections/{collection_name}/points/{id} | Get point
[**get_points**](PointsApi.md#get_points) | **POST** /collections/{collection_name}/points | Get points
[**overwrite_payload**](PointsApi.md#overwrite_payload) | **PUT** /collections/{collection_name}/points/payload | Overwrite payload
[**query_batch_points**](PointsApi.md#query_batch_points) | **POST** /collections/{collection_name}/points/query/batch | Query points in batch
[**query_points**](PointsApi.md#query_points) | **POST** /collections/{collection_name}/points/query | Query points
[**query_points_groups**](PointsApi.md#query_points_groups) | **POST** /collections/{collection_name}/points/query/groups | Query points, grouped by a given payload field
[**recommend_batch_points**](PointsApi.md#recommend_batch_points) | **POST** /collections/{collection_name}/points/recommend/batch | Recommend batch points
[**recommend_point_groups**](PointsApi.md#recommend_point_groups) | **POST** /collections/{collection_name}/points/recommend/groups | Recommend point groups
[**recommend_points**](PointsApi.md#recommend_points) | **POST** /collections/{collection_name}/points/recommend | Recommend points
[**scroll_points**](PointsApi.md#scroll_points) | **POST** /collections/{collection_name}/points/scroll | Scroll points
[**search_batch_points**](PointsApi.md#search_batch_points) | **POST** /collections/{collection_name}/points/search/batch | Search batch points
[**search_point_groups**](PointsApi.md#search_point_groups) | **POST** /collections/{collection_name}/points/search/groups | Search point groups
[**search_points**](PointsApi.md#search_points) | **POST** /collections/{collection_name}/points/search | Search points
[**set_payload**](PointsApi.md#set_payload) | **POST** /collections/{collection_name}/points/payload | Set payload
[**update_vectors**](PointsApi.md#update_vectors) | **PUT** /collections/{collection_name}/points/vectors | Update vectors
[**upsert_points**](PointsApi.md#upsert_points) | **PUT** /collections/{collection_name}/points | Upsert points


# **batch_update**
> batch_update(_api::PointsApi, collection_name::String; wait=nothing, ordering=nothing, qdrant_update_operations=nothing, _mediaType=nothing) -> QdrantBatchUpdate200Response, OpenAPI.Clients.ApiResponse <br/>
> batch_update(_api::PointsApi, response_stream::Channel, collection_name::String; wait=nothing, ordering=nothing, qdrant_update_operations=nothing, _mediaType=nothing) -> Channel{ QdrantBatchUpdate200Response }, OpenAPI.Clients.ApiResponse

Batch update points

Apply a series of update operations for points, vectors and payloads

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PointsApi** | API context | 
**collection_name** | **String**| Name of the collection to apply operations on | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wait** | **Bool**| If true, wait for changes to actually happen | [default to nothing]
 **ordering** | [**QdrantWriteOrdering**](.md)| define ordering guarantees for the operation | [default to nothing]
 **qdrant_update_operations** | [**QdrantUpdateOperations**](QdrantUpdateOperations.md)| update operations | 

### Return type

[**QdrantBatchUpdate200Response**](QdrantBatchUpdate200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **clear_payload**
> clear_payload(_api::PointsApi, collection_name::String; wait=nothing, ordering=nothing, qdrant_points_selector=nothing, _mediaType=nothing) -> QdrantCreateFieldIndex200Response, OpenAPI.Clients.ApiResponse <br/>
> clear_payload(_api::PointsApi, response_stream::Channel, collection_name::String; wait=nothing, ordering=nothing, qdrant_points_selector=nothing, _mediaType=nothing) -> Channel{ QdrantCreateFieldIndex200Response }, OpenAPI.Clients.ApiResponse

Clear payload

Remove all payload for specified points

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PointsApi** | API context | 
**collection_name** | **String**| Name of the collection to clear payload from | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wait** | **Bool**| If true, wait for changes to actually happen | [default to nothing]
 **ordering** | [**QdrantWriteOrdering**](.md)| define ordering guarantees for the operation | [default to nothing]
 **qdrant_points_selector** | [**QdrantPointsSelector**](QdrantPointsSelector.md)| clear payload on points | 

### Return type

[**QdrantCreateFieldIndex200Response**](QdrantCreateFieldIndex200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **count_points**
> count_points(_api::PointsApi, collection_name::String; timeout=nothing, qdrant_count_request=nothing, _mediaType=nothing) -> QdrantCountPoints200Response, OpenAPI.Clients.ApiResponse <br/>
> count_points(_api::PointsApi, response_stream::Channel, collection_name::String; timeout=nothing, qdrant_count_request=nothing, _mediaType=nothing) -> Channel{ QdrantCountPoints200Response }, OpenAPI.Clients.ApiResponse

Count points

Count points which matches given filtering condition

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PointsApi** | API context | 
**collection_name** | **String**| Name of the collection to count in | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeout** | **Int64**| If set, overrides global timeout for this request. Unit is seconds. | [default to nothing]
 **qdrant_count_request** | [**QdrantCountRequest**](QdrantCountRequest.md)| Request counts of points which matches given filtering condition | 

### Return type

[**QdrantCountPoints200Response**](QdrantCountPoints200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_payload**
> delete_payload(_api::PointsApi, collection_name::String; wait=nothing, ordering=nothing, qdrant_delete_payload=nothing, _mediaType=nothing) -> QdrantCreateFieldIndex200Response, OpenAPI.Clients.ApiResponse <br/>
> delete_payload(_api::PointsApi, response_stream::Channel, collection_name::String; wait=nothing, ordering=nothing, qdrant_delete_payload=nothing, _mediaType=nothing) -> Channel{ QdrantCreateFieldIndex200Response }, OpenAPI.Clients.ApiResponse

Delete payload

Delete specified key payload for points

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PointsApi** | API context | 
**collection_name** | **String**| Name of the collection to delete from | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wait** | **Bool**| If true, wait for changes to actually happen | [default to nothing]
 **ordering** | [**QdrantWriteOrdering**](.md)| define ordering guarantees for the operation | [default to nothing]
 **qdrant_delete_payload** | [**QdrantDeletePayload**](QdrantDeletePayload.md)| delete payload on points | 

### Return type

[**QdrantCreateFieldIndex200Response**](QdrantCreateFieldIndex200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_points**
> delete_points(_api::PointsApi, collection_name::String; wait=nothing, ordering=nothing, qdrant_points_selector=nothing, _mediaType=nothing) -> QdrantCreateFieldIndex200Response, OpenAPI.Clients.ApiResponse <br/>
> delete_points(_api::PointsApi, response_stream::Channel, collection_name::String; wait=nothing, ordering=nothing, qdrant_points_selector=nothing, _mediaType=nothing) -> Channel{ QdrantCreateFieldIndex200Response }, OpenAPI.Clients.ApiResponse

Delete points

Delete points

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PointsApi** | API context | 
**collection_name** | **String**| Name of the collection to delete from | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wait** | **Bool**| If true, wait for changes to actually happen | [default to nothing]
 **ordering** | [**QdrantWriteOrdering**](.md)| define ordering guarantees for the operation | [default to nothing]
 **qdrant_points_selector** | [**QdrantPointsSelector**](QdrantPointsSelector.md)| Operation to perform on points | 

### Return type

[**QdrantCreateFieldIndex200Response**](QdrantCreateFieldIndex200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_vectors**
> delete_vectors(_api::PointsApi, collection_name::String; wait=nothing, ordering=nothing, qdrant_delete_vectors=nothing, _mediaType=nothing) -> QdrantCreateFieldIndex200Response, OpenAPI.Clients.ApiResponse <br/>
> delete_vectors(_api::PointsApi, response_stream::Channel, collection_name::String; wait=nothing, ordering=nothing, qdrant_delete_vectors=nothing, _mediaType=nothing) -> Channel{ QdrantCreateFieldIndex200Response }, OpenAPI.Clients.ApiResponse

Delete vectors

Delete named vectors from the given points.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PointsApi** | API context | 
**collection_name** | **String**| Name of the collection to delete from | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wait** | **Bool**| If true, wait for changes to actually happen | [default to nothing]
 **ordering** | [**QdrantWriteOrdering**](.md)| define ordering guarantees for the operation | [default to nothing]
 **qdrant_delete_vectors** | [**QdrantDeleteVectors**](QdrantDeleteVectors.md)| Delete named vectors from points | 

### Return type

[**QdrantCreateFieldIndex200Response**](QdrantCreateFieldIndex200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **discover_batch_points**
> discover_batch_points(_api::PointsApi, collection_name::String; consistency=nothing, timeout=nothing, qdrant_discover_request_batch=nothing, _mediaType=nothing) -> QdrantSearchBatchPoints200Response, OpenAPI.Clients.ApiResponse <br/>
> discover_batch_points(_api::PointsApi, response_stream::Channel, collection_name::String; consistency=nothing, timeout=nothing, qdrant_discover_request_batch=nothing, _mediaType=nothing) -> Channel{ QdrantSearchBatchPoints200Response }, OpenAPI.Clients.ApiResponse

Discover batch points

Look for points based on target and/or positive and negative example pairs, in batch.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PointsApi** | API context | 
**collection_name** | **String**| Name of the collection to search in | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consistency** | [**QdrantReadConsistency**](.md)| Define read consistency guarantees for the operation | [default to nothing]
 **timeout** | **Int64**| If set, overrides global timeout for this request. Unit is seconds. | [default to nothing]
 **qdrant_discover_request_batch** | [**QdrantDiscoverRequestBatch**](QdrantDiscoverRequestBatch.md)| Batch request points based on { positive, negative } pairs of examples, and/or a target. | 

### Return type

[**QdrantSearchBatchPoints200Response**](QdrantSearchBatchPoints200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **discover_points**
> discover_points(_api::PointsApi, collection_name::String; consistency=nothing, timeout=nothing, qdrant_discover_request=nothing, _mediaType=nothing) -> QdrantSearchPoints200Response, OpenAPI.Clients.ApiResponse <br/>
> discover_points(_api::PointsApi, response_stream::Channel, collection_name::String; consistency=nothing, timeout=nothing, qdrant_discover_request=nothing, _mediaType=nothing) -> Channel{ QdrantSearchPoints200Response }, OpenAPI.Clients.ApiResponse

Discover points

Use context and a target to find the most similar points to the target, constrained by the context. When using only the context (without a target), a special search - called context search - is performed where pairs of points are used to generate a loss that guides the search towards the zone where most positive examples overlap. This means that the score minimizes the scenario of finding a point closer to a negative than to a positive part of a pair. Since the score of a context relates to loss, the maximum score a point can get is 0.0, and it becomes normal that many points can have a score of 0.0. When using target (with or without context), the score behaves a little different: The  integer part of the score represents the rank with respect to the context, while the decimal part of the score relates to the distance to the target. The context part of the score for  each pair is calculated +1 if the point is closer to a positive than to a negative part of a pair,  and -1 otherwise. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PointsApi** | API context | 
**collection_name** | **String**| Name of the collection to search in | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consistency** | [**QdrantReadConsistency**](.md)| Define read consistency guarantees for the operation | [default to nothing]
 **timeout** | **Int64**| If set, overrides global timeout for this request. Unit is seconds. | [default to nothing]
 **qdrant_discover_request** | [**QdrantDiscoverRequest**](QdrantDiscoverRequest.md)| Request points based on {positive, negative} pairs of examples, and/or a target | 

### Return type

[**QdrantSearchPoints200Response**](QdrantSearchPoints200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_point**
> get_point(_api::PointsApi, collection_name::String, id::QdrantExtendedPointId; consistency=nothing, _mediaType=nothing) -> QdrantGetPoint200Response, OpenAPI.Clients.ApiResponse <br/>
> get_point(_api::PointsApi, response_stream::Channel, collection_name::String, id::QdrantExtendedPointId; consistency=nothing, _mediaType=nothing) -> Channel{ QdrantGetPoint200Response }, OpenAPI.Clients.ApiResponse

Get point

Retrieve full information of single point by id

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PointsApi** | API context | 
**collection_name** | **String**| Name of the collection to retrieve from | [default to nothing]
**id** | [**QdrantExtendedPointId**](.md)| Id of the point | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consistency** | [**QdrantReadConsistency**](.md)| Define read consistency guarantees for the operation | [default to nothing]

### Return type

[**QdrantGetPoint200Response**](QdrantGetPoint200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_points**
> get_points(_api::PointsApi, collection_name::String; consistency=nothing, timeout=nothing, qdrant_point_request=nothing, _mediaType=nothing) -> QdrantGetPoints200Response, OpenAPI.Clients.ApiResponse <br/>
> get_points(_api::PointsApi, response_stream::Channel, collection_name::String; consistency=nothing, timeout=nothing, qdrant_point_request=nothing, _mediaType=nothing) -> Channel{ QdrantGetPoints200Response }, OpenAPI.Clients.ApiResponse

Get points

Retrieve multiple points by specified IDs

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PointsApi** | API context | 
**collection_name** | **String**| Name of the collection to retrieve from | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consistency** | [**QdrantReadConsistency**](.md)| Define read consistency guarantees for the operation | [default to nothing]
 **timeout** | **Int64**| If set, overrides global timeout for this request. Unit is seconds. | [default to nothing]
 **qdrant_point_request** | [**QdrantPointRequest**](QdrantPointRequest.md)| List of points to retrieve | 

### Return type

[**QdrantGetPoints200Response**](QdrantGetPoints200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **overwrite_payload**
> overwrite_payload(_api::PointsApi, collection_name::String; wait=nothing, ordering=nothing, qdrant_set_payload=nothing, _mediaType=nothing) -> QdrantCreateFieldIndex200Response, OpenAPI.Clients.ApiResponse <br/>
> overwrite_payload(_api::PointsApi, response_stream::Channel, collection_name::String; wait=nothing, ordering=nothing, qdrant_set_payload=nothing, _mediaType=nothing) -> Channel{ QdrantCreateFieldIndex200Response }, OpenAPI.Clients.ApiResponse

Overwrite payload

Replace full payload of points with new one

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PointsApi** | API context | 
**collection_name** | **String**| Name of the collection to set from | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wait** | **Bool**| If true, wait for changes to actually happen | [default to nothing]
 **ordering** | [**QdrantWriteOrdering**](.md)| define ordering guarantees for the operation | [default to nothing]
 **qdrant_set_payload** | [**QdrantSetPayload**](QdrantSetPayload.md)| Payload and points selector | 

### Return type

[**QdrantCreateFieldIndex200Response**](QdrantCreateFieldIndex200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **query_batch_points**
> query_batch_points(_api::PointsApi, collection_name::String; consistency=nothing, timeout=nothing, qdrant_query_request_batch=nothing, _mediaType=nothing) -> QdrantQueryBatchPoints200Response, OpenAPI.Clients.ApiResponse <br/>
> query_batch_points(_api::PointsApi, response_stream::Channel, collection_name::String; consistency=nothing, timeout=nothing, qdrant_query_request_batch=nothing, _mediaType=nothing) -> Channel{ QdrantQueryBatchPoints200Response }, OpenAPI.Clients.ApiResponse

Query points in batch

Universally query points in batch. This endpoint covers all capabilities of search, recommend, discover, filters. But also enables hybrid and multi-stage queries.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PointsApi** | API context | 
**collection_name** | **String**| Name of the collection to query | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consistency** | [**QdrantReadConsistency**](.md)| Define read consistency guarantees for the operation | [default to nothing]
 **timeout** | **Int64**| If set, overrides global timeout for this request. Unit is seconds. | [default to nothing]
 **qdrant_query_request_batch** | [**QdrantQueryRequestBatch**](QdrantQueryRequestBatch.md)| Describes the queries to make to the collection | 

### Return type

[**QdrantQueryBatchPoints200Response**](QdrantQueryBatchPoints200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **query_points**
> query_points(_api::PointsApi, collection_name::String; consistency=nothing, timeout=nothing, qdrant_query_request=nothing, _mediaType=nothing) -> QdrantQueryPoints200Response, OpenAPI.Clients.ApiResponse <br/>
> query_points(_api::PointsApi, response_stream::Channel, collection_name::String; consistency=nothing, timeout=nothing, qdrant_query_request=nothing, _mediaType=nothing) -> Channel{ QdrantQueryPoints200Response }, OpenAPI.Clients.ApiResponse

Query points

Universally query points. This endpoint covers all capabilities of search, recommend, discover, filters. But also enables hybrid and multi-stage queries.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PointsApi** | API context | 
**collection_name** | **String**| Name of the collection to query | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consistency** | [**QdrantReadConsistency**](.md)| Define read consistency guarantees for the operation | [default to nothing]
 **timeout** | **Int64**| If set, overrides global timeout for this request. Unit is seconds. | [default to nothing]
 **qdrant_query_request** | [**QdrantQueryRequest**](QdrantQueryRequest.md)| Describes the query to make to the collection | 

### Return type

[**QdrantQueryPoints200Response**](QdrantQueryPoints200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **query_points_groups**
> query_points_groups(_api::PointsApi, collection_name::String; consistency=nothing, timeout=nothing, qdrant_query_groups_request=nothing, _mediaType=nothing) -> QdrantSearchPointGroups200Response, OpenAPI.Clients.ApiResponse <br/>
> query_points_groups(_api::PointsApi, response_stream::Channel, collection_name::String; consistency=nothing, timeout=nothing, qdrant_query_groups_request=nothing, _mediaType=nothing) -> Channel{ QdrantSearchPointGroups200Response }, OpenAPI.Clients.ApiResponse

Query points, grouped by a given payload field

Universally query points, grouped by a given payload field

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PointsApi** | API context | 
**collection_name** | **String**| Name of the collection to query | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consistency** | [**QdrantReadConsistency**](.md)| Define read consistency guarantees for the operation | [default to nothing]
 **timeout** | **Int64**| If set, overrides global timeout for this request. Unit is seconds. | [default to nothing]
 **qdrant_query_groups_request** | [**QdrantQueryGroupsRequest**](QdrantQueryGroupsRequest.md)| Describes the query to make to the collection | 

### Return type

[**QdrantSearchPointGroups200Response**](QdrantSearchPointGroups200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **recommend_batch_points**
> recommend_batch_points(_api::PointsApi, collection_name::String; consistency=nothing, timeout=nothing, qdrant_recommend_request_batch=nothing, _mediaType=nothing) -> QdrantSearchBatchPoints200Response, OpenAPI.Clients.ApiResponse <br/>
> recommend_batch_points(_api::PointsApi, response_stream::Channel, collection_name::String; consistency=nothing, timeout=nothing, qdrant_recommend_request_batch=nothing, _mediaType=nothing) -> Channel{ QdrantSearchBatchPoints200Response }, OpenAPI.Clients.ApiResponse

Recommend batch points

Look for the points which are closer to stored positive examples and at the same time further to negative examples.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PointsApi** | API context | 
**collection_name** | **String**| Name of the collection to search in | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consistency** | [**QdrantReadConsistency**](.md)| Define read consistency guarantees for the operation | [default to nothing]
 **timeout** | **Int64**| If set, overrides global timeout for this request. Unit is seconds. | [default to nothing]
 **qdrant_recommend_request_batch** | [**QdrantRecommendRequestBatch**](QdrantRecommendRequestBatch.md)| Request points based on positive and negative examples. | 

### Return type

[**QdrantSearchBatchPoints200Response**](QdrantSearchBatchPoints200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **recommend_point_groups**
> recommend_point_groups(_api::PointsApi, collection_name::String; consistency=nothing, timeout=nothing, qdrant_recommend_groups_request=nothing, _mediaType=nothing) -> QdrantSearchPointGroups200Response, OpenAPI.Clients.ApiResponse <br/>
> recommend_point_groups(_api::PointsApi, response_stream::Channel, collection_name::String; consistency=nothing, timeout=nothing, qdrant_recommend_groups_request=nothing, _mediaType=nothing) -> Channel{ QdrantSearchPointGroups200Response }, OpenAPI.Clients.ApiResponse

Recommend point groups

Look for the points which are closer to stored positive examples and at the same time further to negative examples, grouped by a given payload field.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PointsApi** | API context | 
**collection_name** | **String**| Name of the collection to search in | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consistency** | [**QdrantReadConsistency**](.md)| Define read consistency guarantees for the operation | [default to nothing]
 **timeout** | **Int64**| If set, overrides global timeout for this request. Unit is seconds. | [default to nothing]
 **qdrant_recommend_groups_request** | [**QdrantRecommendGroupsRequest**](QdrantRecommendGroupsRequest.md)| Request points based on positive and negative examples, grouped by a payload field. | 

### Return type

[**QdrantSearchPointGroups200Response**](QdrantSearchPointGroups200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **recommend_points**
> recommend_points(_api::PointsApi, collection_name::String; consistency=nothing, timeout=nothing, qdrant_recommend_request=nothing, _mediaType=nothing) -> QdrantSearchPoints200Response, OpenAPI.Clients.ApiResponse <br/>
> recommend_points(_api::PointsApi, response_stream::Channel, collection_name::String; consistency=nothing, timeout=nothing, qdrant_recommend_request=nothing, _mediaType=nothing) -> Channel{ QdrantSearchPoints200Response }, OpenAPI.Clients.ApiResponse

Recommend points

Look for the points which are closer to stored positive examples and at the same time further to negative examples.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PointsApi** | API context | 
**collection_name** | **String**| Name of the collection to search in | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consistency** | [**QdrantReadConsistency**](.md)| Define read consistency guarantees for the operation | [default to nothing]
 **timeout** | **Int64**| If set, overrides global timeout for this request. Unit is seconds. | [default to nothing]
 **qdrant_recommend_request** | [**QdrantRecommendRequest**](QdrantRecommendRequest.md)| Request points based on positive and negative examples. | 

### Return type

[**QdrantSearchPoints200Response**](QdrantSearchPoints200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **scroll_points**
> scroll_points(_api::PointsApi, collection_name::String; consistency=nothing, timeout=nothing, qdrant_scroll_request=nothing, _mediaType=nothing) -> QdrantScrollPoints200Response, OpenAPI.Clients.ApiResponse <br/>
> scroll_points(_api::PointsApi, response_stream::Channel, collection_name::String; consistency=nothing, timeout=nothing, qdrant_scroll_request=nothing, _mediaType=nothing) -> Channel{ QdrantScrollPoints200Response }, OpenAPI.Clients.ApiResponse

Scroll points

Scroll request - paginate over all points which matches given filtering condition

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PointsApi** | API context | 
**collection_name** | **String**| Name of the collection to retrieve from | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consistency** | [**QdrantReadConsistency**](.md)| Define read consistency guarantees for the operation | [default to nothing]
 **timeout** | **Int64**| If set, overrides global timeout for this request. Unit is seconds. | [default to nothing]
 **qdrant_scroll_request** | [**QdrantScrollRequest**](QdrantScrollRequest.md)| Pagination and filter parameters | 

### Return type

[**QdrantScrollPoints200Response**](QdrantScrollPoints200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **search_batch_points**
> search_batch_points(_api::PointsApi, collection_name::String; consistency=nothing, timeout=nothing, qdrant_search_request_batch=nothing, _mediaType=nothing) -> QdrantSearchBatchPoints200Response, OpenAPI.Clients.ApiResponse <br/>
> search_batch_points(_api::PointsApi, response_stream::Channel, collection_name::String; consistency=nothing, timeout=nothing, qdrant_search_request_batch=nothing, _mediaType=nothing) -> Channel{ QdrantSearchBatchPoints200Response }, OpenAPI.Clients.ApiResponse

Search batch points

Retrieve by batch the closest points based on vector similarity and given filtering conditions

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PointsApi** | API context | 
**collection_name** | **String**| Name of the collection to search in | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consistency** | [**QdrantReadConsistency**](.md)| Define read consistency guarantees for the operation | [default to nothing]
 **timeout** | **Int64**| If set, overrides global timeout for this request. Unit is seconds. | [default to nothing]
 **qdrant_search_request_batch** | [**QdrantSearchRequestBatch**](QdrantSearchRequestBatch.md)| Search batch request | 

### Return type

[**QdrantSearchBatchPoints200Response**](QdrantSearchBatchPoints200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **search_point_groups**
> search_point_groups(_api::PointsApi, collection_name::String; consistency=nothing, timeout=nothing, qdrant_search_groups_request=nothing, _mediaType=nothing) -> QdrantSearchPointGroups200Response, OpenAPI.Clients.ApiResponse <br/>
> search_point_groups(_api::PointsApi, response_stream::Channel, collection_name::String; consistency=nothing, timeout=nothing, qdrant_search_groups_request=nothing, _mediaType=nothing) -> Channel{ QdrantSearchPointGroups200Response }, OpenAPI.Clients.ApiResponse

Search point groups

Retrieve closest points based on vector similarity and given filtering conditions, grouped by a given payload field

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PointsApi** | API context | 
**collection_name** | **String**| Name of the collection to search in | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consistency** | [**QdrantReadConsistency**](.md)| Define read consistency guarantees for the operation | [default to nothing]
 **timeout** | **Int64**| If set, overrides global timeout for this request. Unit is seconds. | [default to nothing]
 **qdrant_search_groups_request** | [**QdrantSearchGroupsRequest**](QdrantSearchGroupsRequest.md)| Search request with optional filtering, grouped by a given payload field | 

### Return type

[**QdrantSearchPointGroups200Response**](QdrantSearchPointGroups200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **search_points**
> search_points(_api::PointsApi, collection_name::String; consistency=nothing, timeout=nothing, qdrant_search_request=nothing, _mediaType=nothing) -> QdrantSearchPoints200Response, OpenAPI.Clients.ApiResponse <br/>
> search_points(_api::PointsApi, response_stream::Channel, collection_name::String; consistency=nothing, timeout=nothing, qdrant_search_request=nothing, _mediaType=nothing) -> Channel{ QdrantSearchPoints200Response }, OpenAPI.Clients.ApiResponse

Search points

Retrieve closest points based on vector similarity and given filtering conditions

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PointsApi** | API context | 
**collection_name** | **String**| Name of the collection to search in | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consistency** | [**QdrantReadConsistency**](.md)| Define read consistency guarantees for the operation | [default to nothing]
 **timeout** | **Int64**| If set, overrides global timeout for this request. Unit is seconds. | [default to nothing]
 **qdrant_search_request** | [**QdrantSearchRequest**](QdrantSearchRequest.md)| Search request with optional filtering | 

### Return type

[**QdrantSearchPoints200Response**](QdrantSearchPoints200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **set_payload**
> set_payload(_api::PointsApi, collection_name::String; wait=nothing, ordering=nothing, qdrant_set_payload=nothing, _mediaType=nothing) -> QdrantCreateFieldIndex200Response, OpenAPI.Clients.ApiResponse <br/>
> set_payload(_api::PointsApi, response_stream::Channel, collection_name::String; wait=nothing, ordering=nothing, qdrant_set_payload=nothing, _mediaType=nothing) -> Channel{ QdrantCreateFieldIndex200Response }, OpenAPI.Clients.ApiResponse

Set payload

Set payload values for points

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PointsApi** | API context | 
**collection_name** | **String**| Name of the collection to set from | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wait** | **Bool**| If true, wait for changes to actually happen | [default to nothing]
 **ordering** | [**QdrantWriteOrdering**](.md)| define ordering guarantees for the operation | [default to nothing]
 **qdrant_set_payload** | [**QdrantSetPayload**](QdrantSetPayload.md)| Set payload on points | 

### Return type

[**QdrantCreateFieldIndex200Response**](QdrantCreateFieldIndex200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_vectors**
> update_vectors(_api::PointsApi, collection_name::String; wait=nothing, ordering=nothing, qdrant_update_vectors=nothing, _mediaType=nothing) -> QdrantCreateFieldIndex200Response, OpenAPI.Clients.ApiResponse <br/>
> update_vectors(_api::PointsApi, response_stream::Channel, collection_name::String; wait=nothing, ordering=nothing, qdrant_update_vectors=nothing, _mediaType=nothing) -> Channel{ QdrantCreateFieldIndex200Response }, OpenAPI.Clients.ApiResponse

Update vectors

Update specified named vectors on points, keep unspecified vectors intact.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PointsApi** | API context | 
**collection_name** | **String**| Name of the collection to update from | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wait** | **Bool**| If true, wait for changes to actually happen | [default to nothing]
 **ordering** | [**QdrantWriteOrdering**](.md)| define ordering guarantees for the operation | [default to nothing]
 **qdrant_update_vectors** | [**QdrantUpdateVectors**](QdrantUpdateVectors.md)| Update named vectors on points | 

### Return type

[**QdrantCreateFieldIndex200Response**](QdrantCreateFieldIndex200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **upsert_points**
> upsert_points(_api::PointsApi, collection_name::String; wait=nothing, ordering=nothing, qdrant_point_insert_operations=nothing, _mediaType=nothing) -> QdrantCreateFieldIndex200Response, OpenAPI.Clients.ApiResponse <br/>
> upsert_points(_api::PointsApi, response_stream::Channel, collection_name::String; wait=nothing, ordering=nothing, qdrant_point_insert_operations=nothing, _mediaType=nothing) -> Channel{ QdrantCreateFieldIndex200Response }, OpenAPI.Clients.ApiResponse

Upsert points

Perform insert + updates on points. If point with given ID already exists - it will be overwritten.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PointsApi** | API context | 
**collection_name** | **String**| Name of the collection to update from | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wait** | **Bool**| If true, wait for changes to actually happen | [default to nothing]
 **ordering** | [**QdrantWriteOrdering**](.md)| define ordering guarantees for the operation | [default to nothing]
 **qdrant_point_insert_operations** | [**QdrantPointInsertOperations**](QdrantPointInsertOperations.md)| Operation to perform on points | 

### Return type

[**QdrantCreateFieldIndex200Response**](QdrantCreateFieldIndex200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

