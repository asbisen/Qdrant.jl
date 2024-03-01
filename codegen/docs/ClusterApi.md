# ClusterApi

All URIs are relative to *http://localhost:6333*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cluster_status**](ClusterApi.md#cluster_status) | **GET** /cluster | Get cluster status info
[**collection_cluster_info**](ClusterApi.md#collection_cluster_info) | **GET** /collections/{collection_name}/cluster | Collection cluster info
[**create_shard_key**](ClusterApi.md#create_shard_key) | **PUT** /collections/{collection_name}/shards | Create shard key
[**delete_shard_key**](ClusterApi.md#delete_shard_key) | **POST** /collections/{collection_name}/shards/delete | Delete shard key
[**recover_current_peer**](ClusterApi.md#recover_current_peer) | **POST** /cluster/recover | Tries to recover current peer Raft state.
[**remove_peer**](ClusterApi.md#remove_peer) | **DELETE** /cluster/peer/{peer_id} | Remove peer from the cluster
[**update_collection_cluster**](ClusterApi.md#update_collection_cluster) | **POST** /collections/{collection_name}/cluster | Update collection cluster setup


# **cluster_status**
> cluster_status(_api::ClusterApi; _mediaType=nothing) -> QdrantClusterStatus200Response, OpenAPI.Clients.ApiResponse <br/>
> cluster_status(_api::ClusterApi, response_stream::Channel; _mediaType=nothing) -> Channel{ QdrantClusterStatus200Response }, OpenAPI.Clients.ApiResponse

Get cluster status info

Get information about the current state and composition of the cluster

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**QdrantClusterStatus200Response**](QdrantClusterStatus200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **collection_cluster_info**
> collection_cluster_info(_api::ClusterApi, collection_name::String; _mediaType=nothing) -> QdrantCollectionClusterInfo200Response, OpenAPI.Clients.ApiResponse <br/>
> collection_cluster_info(_api::ClusterApi, response_stream::Channel, collection_name::String; _mediaType=nothing) -> Channel{ QdrantCollectionClusterInfo200Response }, OpenAPI.Clients.ApiResponse

Collection cluster info

Get cluster information for a collection

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ClusterApi** | API context | 
**collection_name** | **String**| Name of the collection to retrieve the cluster info for | [default to nothing]

### Return type

[**QdrantCollectionClusterInfo200Response**](QdrantCollectionClusterInfo200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **create_shard_key**
> create_shard_key(_api::ClusterApi, collection_name::String; timeout=nothing, qdrant_create_sharding_key=nothing, _mediaType=nothing) -> QdrantCreateShardKey200Response, OpenAPI.Clients.ApiResponse <br/>
> create_shard_key(_api::ClusterApi, response_stream::Channel, collection_name::String; timeout=nothing, qdrant_create_sharding_key=nothing, _mediaType=nothing) -> Channel{ QdrantCreateShardKey200Response }, OpenAPI.Clients.ApiResponse

Create shard key

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ClusterApi** | API context | 
**collection_name** | **String**| Name of the collection to create shards for | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeout** | **Int64**| Wait for operation commit timeout in seconds.  If timeout is reached - request will return with service error.  | [default to nothing]
 **qdrant_create_sharding_key** | [**QdrantCreateShardingKey**](QdrantCreateShardingKey.md)| Shard key configuration | 

### Return type

[**QdrantCreateShardKey200Response**](QdrantCreateShardKey200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_shard_key**
> delete_shard_key(_api::ClusterApi, collection_name::String; timeout=nothing, qdrant_drop_sharding_key=nothing, _mediaType=nothing) -> QdrantCreateShardKey200Response, OpenAPI.Clients.ApiResponse <br/>
> delete_shard_key(_api::ClusterApi, response_stream::Channel, collection_name::String; timeout=nothing, qdrant_drop_sharding_key=nothing, _mediaType=nothing) -> Channel{ QdrantCreateShardKey200Response }, OpenAPI.Clients.ApiResponse

Delete shard key

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ClusterApi** | API context | 
**collection_name** | **String**| Name of the collection to create shards for | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeout** | **Int64**| Wait for operation commit timeout in seconds.  If timeout is reached - request will return with service error.  | [default to nothing]
 **qdrant_drop_sharding_key** | [**QdrantDropShardingKey**](QdrantDropShardingKey.md)| Select shard key to delete | 

### Return type

[**QdrantCreateShardKey200Response**](QdrantCreateShardKey200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **recover_current_peer**
> recover_current_peer(_api::ClusterApi; _mediaType=nothing) -> QdrantCreateShardKey200Response, OpenAPI.Clients.ApiResponse <br/>
> recover_current_peer(_api::ClusterApi, response_stream::Channel; _mediaType=nothing) -> Channel{ QdrantCreateShardKey200Response }, OpenAPI.Clients.ApiResponse

Tries to recover current peer Raft state.

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**QdrantCreateShardKey200Response**](QdrantCreateShardKey200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **remove_peer**
> remove_peer(_api::ClusterApi, peer_id::Int64; force=nothing, _mediaType=nothing) -> QdrantCreateShardKey200Response, OpenAPI.Clients.ApiResponse <br/>
> remove_peer(_api::ClusterApi, response_stream::Channel, peer_id::Int64; force=nothing, _mediaType=nothing) -> Channel{ QdrantCreateShardKey200Response }, OpenAPI.Clients.ApiResponse

Remove peer from the cluster

Tries to remove peer from the cluster. Will return an error if peer has shards on it.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ClusterApi** | API context | 
**peer_id** | **Int64**| Id of the peer | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **force** | **Bool**| If true - removes peer even if it has shards/replicas on it. | [default to false]

### Return type

[**QdrantCreateShardKey200Response**](QdrantCreateShardKey200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_collection_cluster**
> update_collection_cluster(_api::ClusterApi, collection_name::String; timeout=nothing, qdrant_cluster_operations=nothing, _mediaType=nothing) -> QdrantCreateShardKey200Response, OpenAPI.Clients.ApiResponse <br/>
> update_collection_cluster(_api::ClusterApi, response_stream::Channel, collection_name::String; timeout=nothing, qdrant_cluster_operations=nothing, _mediaType=nothing) -> Channel{ QdrantCreateShardKey200Response }, OpenAPI.Clients.ApiResponse

Update collection cluster setup

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ClusterApi** | API context | 
**collection_name** | **String**| Name of the collection on which to to apply the cluster update operation | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeout** | **Int64**| Wait for operation commit timeout in seconds.  If timeout is reached - request will return with service error.  | [default to nothing]
 **qdrant_cluster_operations** | [**QdrantClusterOperations**](QdrantClusterOperations.md)| Collection cluster update operations | 

### Return type

[**QdrantCreateShardKey200Response**](QdrantCreateShardKey200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

