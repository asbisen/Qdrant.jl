# CollectionsApi

All URIs are relative to *http://localhost:6333*

Method | HTTP request | Description
------------- | ------------- | -------------
[**collection_cluster_info**](CollectionsApi.md#collection_cluster_info) | **GET** /collections/{collection_name}/cluster | Collection cluster info
[**collection_exists**](CollectionsApi.md#collection_exists) | **GET** /collections/{collection_name}/exists | Check the existence of a collection
[**create_collection**](CollectionsApi.md#create_collection) | **PUT** /collections/{collection_name} | Create collection
[**create_field_index**](CollectionsApi.md#create_field_index) | **PUT** /collections/{collection_name}/index | Create index for field in collection
[**create_shard_key**](CollectionsApi.md#create_shard_key) | **PUT** /collections/{collection_name}/shards | Create shard key
[**create_shard_snapshot**](CollectionsApi.md#create_shard_snapshot) | **POST** /collections/{collection_name}/shards/{shard_id}/snapshots | Create shard snapshot
[**create_snapshot**](CollectionsApi.md#create_snapshot) | **POST** /collections/{collection_name}/snapshots | Create collection snapshot
[**delete_collection**](CollectionsApi.md#delete_collection) | **DELETE** /collections/{collection_name} | Delete collection
[**delete_field_index**](CollectionsApi.md#delete_field_index) | **DELETE** /collections/{collection_name}/index/{field_name} | Delete index for field in collection
[**delete_shard_key**](CollectionsApi.md#delete_shard_key) | **POST** /collections/{collection_name}/shards/delete | Delete shard key
[**delete_shard_snapshot**](CollectionsApi.md#delete_shard_snapshot) | **DELETE** /collections/{collection_name}/shards/{shard_id}/snapshots/{snapshot_name} | Delete shard snapshot
[**delete_snapshot**](CollectionsApi.md#delete_snapshot) | **DELETE** /collections/{collection_name}/snapshots/{snapshot_name} | Delete collection snapshot
[**get_collection**](CollectionsApi.md#get_collection) | **GET** /collections/{collection_name} | Collection info
[**get_collection_aliases**](CollectionsApi.md#get_collection_aliases) | **GET** /collections/{collection_name}/aliases | List aliases for collection
[**get_collections**](CollectionsApi.md#get_collections) | **GET** /collections | List collections
[**get_collections_aliases**](CollectionsApi.md#get_collections_aliases) | **GET** /aliases | List collections aliases
[**get_shard_snapshot**](CollectionsApi.md#get_shard_snapshot) | **GET** /collections/{collection_name}/shards/{shard_id}/snapshots/{snapshot_name} | Download collection snapshot
[**get_snapshot**](CollectionsApi.md#get_snapshot) | **GET** /collections/{collection_name}/snapshots/{snapshot_name} | Download collection snapshot
[**list_shard_snapshots**](CollectionsApi.md#list_shard_snapshots) | **GET** /collections/{collection_name}/shards/{shard_id}/snapshots | List shards snapshots for a collection
[**list_snapshots**](CollectionsApi.md#list_snapshots) | **GET** /collections/{collection_name}/snapshots | List collection snapshots
[**recover_from_snapshot**](CollectionsApi.md#recover_from_snapshot) | **PUT** /collections/{collection_name}/snapshots/recover | Recover from a snapshot
[**recover_from_uploaded_snapshot**](CollectionsApi.md#recover_from_uploaded_snapshot) | **POST** /collections/{collection_name}/snapshots/upload | Recover from an uploaded snapshot
[**recover_shard_from_snapshot**](CollectionsApi.md#recover_shard_from_snapshot) | **PUT** /collections/{collection_name}/shards/{shard_id}/snapshots/recover | Recover from a snapshot
[**recover_shard_from_uploaded_snapshot**](CollectionsApi.md#recover_shard_from_uploaded_snapshot) | **POST** /collections/{collection_name}/shards/{shard_id}/snapshots/upload | Recover shard from an uploaded snapshot
[**update_aliases**](CollectionsApi.md#update_aliases) | **POST** /collections/aliases | Update aliases of the collections
[**update_collection**](CollectionsApi.md#update_collection) | **PATCH** /collections/{collection_name} | Update collection parameters
[**update_collection_cluster**](CollectionsApi.md#update_collection_cluster) | **POST** /collections/{collection_name}/cluster | Update collection cluster setup


# **collection_cluster_info**
> collection_cluster_info(_api::CollectionsApi, collection_name::String; _mediaType=nothing) -> QdrantCollectionClusterInfo200Response, OpenAPI.Clients.ApiResponse <br/>
> collection_cluster_info(_api::CollectionsApi, response_stream::Channel, collection_name::String; _mediaType=nothing) -> Channel{ QdrantCollectionClusterInfo200Response }, OpenAPI.Clients.ApiResponse

Collection cluster info

Get cluster information for a collection

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CollectionsApi** | API context | 
**collection_name** | **String**| Name of the collection to retrieve the cluster info for | [default to nothing]

### Return type

[**QdrantCollectionClusterInfo200Response**](QdrantCollectionClusterInfo200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **collection_exists**
> collection_exists(_api::CollectionsApi, collection_name::String; _mediaType=nothing) -> QdrantCollectionExists200Response, OpenAPI.Clients.ApiResponse <br/>
> collection_exists(_api::CollectionsApi, response_stream::Channel, collection_name::String; _mediaType=nothing) -> Channel{ QdrantCollectionExists200Response }, OpenAPI.Clients.ApiResponse

Check the existence of a collection

Returns \"true\" if the given collection name exists, and \"false\" otherwise

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CollectionsApi** | API context | 
**collection_name** | **String**| Name of the collection | [default to nothing]

### Return type

[**QdrantCollectionExists200Response**](QdrantCollectionExists200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **create_collection**
> create_collection(_api::CollectionsApi, collection_name::String; timeout=nothing, qdrant_create_collection=nothing, _mediaType=nothing) -> QdrantCreateShardKey200Response, OpenAPI.Clients.ApiResponse <br/>
> create_collection(_api::CollectionsApi, response_stream::Channel, collection_name::String; timeout=nothing, qdrant_create_collection=nothing, _mediaType=nothing) -> Channel{ QdrantCreateShardKey200Response }, OpenAPI.Clients.ApiResponse

Create collection

Create new collection with given parameters

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CollectionsApi** | API context | 
**collection_name** | **String**| Name of the new collection | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeout** | **Int64**| Wait for operation commit timeout in seconds.  If timeout is reached - request will return with service error.  | [default to nothing]
 **qdrant_create_collection** | [**QdrantCreateCollection**](QdrantCreateCollection.md)| Parameters of a new collection | 

### Return type

[**QdrantCreateShardKey200Response**](QdrantCreateShardKey200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **create_field_index**
> create_field_index(_api::CollectionsApi, collection_name::String; wait=nothing, ordering=nothing, qdrant_create_field_index=nothing, _mediaType=nothing) -> QdrantCreateFieldIndex200Response, OpenAPI.Clients.ApiResponse <br/>
> create_field_index(_api::CollectionsApi, response_stream::Channel, collection_name::String; wait=nothing, ordering=nothing, qdrant_create_field_index=nothing, _mediaType=nothing) -> Channel{ QdrantCreateFieldIndex200Response }, OpenAPI.Clients.ApiResponse

Create index for field in collection

Create index for field in collection

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CollectionsApi** | API context | 
**collection_name** | **String**| Name of the collection | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wait** | **Bool**| If true, wait for changes to actually happen | [default to nothing]
 **ordering** | [**QdrantWriteOrdering**](.md)| define ordering guarantees for the operation | [default to nothing]
 **qdrant_create_field_index** | [**QdrantCreateFieldIndex**](QdrantCreateFieldIndex.md)| Field name | 

### Return type

[**QdrantCreateFieldIndex200Response**](QdrantCreateFieldIndex200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **create_shard_key**
> create_shard_key(_api::CollectionsApi, collection_name::String; timeout=nothing, qdrant_create_sharding_key=nothing, _mediaType=nothing) -> QdrantCreateShardKey200Response, OpenAPI.Clients.ApiResponse <br/>
> create_shard_key(_api::CollectionsApi, response_stream::Channel, collection_name::String; timeout=nothing, qdrant_create_sharding_key=nothing, _mediaType=nothing) -> Channel{ QdrantCreateShardKey200Response }, OpenAPI.Clients.ApiResponse

Create shard key

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CollectionsApi** | API context | 
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

# **create_shard_snapshot**
> create_shard_snapshot(_api::CollectionsApi, collection_name::String, shard_id::Int64; wait=nothing, _mediaType=nothing) -> QdrantCreateSnapshot200Response, OpenAPI.Clients.ApiResponse <br/>
> create_shard_snapshot(_api::CollectionsApi, response_stream::Channel, collection_name::String, shard_id::Int64; wait=nothing, _mediaType=nothing) -> Channel{ QdrantCreateSnapshot200Response }, OpenAPI.Clients.ApiResponse

Create shard snapshot

Create new snapshot of a shard for a collection

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CollectionsApi** | API context | 
**collection_name** | **String**| Name of the collection for which to create a snapshot | [default to nothing]
**shard_id** | **Int64**| Id of the shard | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wait** | **Bool**| If true, wait for changes to actually happen. If false - let changes happen in background. Default is true. | [default to nothing]

### Return type

[**QdrantCreateSnapshot200Response**](QdrantCreateSnapshot200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **create_snapshot**
> create_snapshot(_api::CollectionsApi, collection_name::String; wait=nothing, _mediaType=nothing) -> QdrantCreateSnapshot200Response, OpenAPI.Clients.ApiResponse <br/>
> create_snapshot(_api::CollectionsApi, response_stream::Channel, collection_name::String; wait=nothing, _mediaType=nothing) -> Channel{ QdrantCreateSnapshot200Response }, OpenAPI.Clients.ApiResponse

Create collection snapshot

Create new snapshot for a collection

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CollectionsApi** | API context | 
**collection_name** | **String**| Name of the collection for which to create a snapshot | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wait** | **Bool**| If true, wait for changes to actually happen. If false - let changes happen in background. Default is true. | [default to nothing]

### Return type

[**QdrantCreateSnapshot200Response**](QdrantCreateSnapshot200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_collection**
> delete_collection(_api::CollectionsApi, collection_name::String; timeout=nothing, _mediaType=nothing) -> QdrantCreateShardKey200Response, OpenAPI.Clients.ApiResponse <br/>
> delete_collection(_api::CollectionsApi, response_stream::Channel, collection_name::String; timeout=nothing, _mediaType=nothing) -> Channel{ QdrantCreateShardKey200Response }, OpenAPI.Clients.ApiResponse

Delete collection

Drop collection and all associated data

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CollectionsApi** | API context | 
**collection_name** | **String**| Name of the collection to delete | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeout** | **Int64**| Wait for operation commit timeout in seconds.  If timeout is reached - request will return with service error.  | [default to nothing]

### Return type

[**QdrantCreateShardKey200Response**](QdrantCreateShardKey200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_field_index**
> delete_field_index(_api::CollectionsApi, collection_name::String, field_name::String; wait=nothing, ordering=nothing, _mediaType=nothing) -> QdrantCreateFieldIndex200Response, OpenAPI.Clients.ApiResponse <br/>
> delete_field_index(_api::CollectionsApi, response_stream::Channel, collection_name::String, field_name::String; wait=nothing, ordering=nothing, _mediaType=nothing) -> Channel{ QdrantCreateFieldIndex200Response }, OpenAPI.Clients.ApiResponse

Delete index for field in collection

Delete field index for collection

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CollectionsApi** | API context | 
**collection_name** | **String**| Name of the collection | [default to nothing]
**field_name** | **String**| Name of the field where to delete the index | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wait** | **Bool**| If true, wait for changes to actually happen | [default to nothing]
 **ordering** | [**QdrantWriteOrdering**](.md)| define ordering guarantees for the operation | [default to nothing]

### Return type

[**QdrantCreateFieldIndex200Response**](QdrantCreateFieldIndex200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_shard_key**
> delete_shard_key(_api::CollectionsApi, collection_name::String; timeout=nothing, qdrant_drop_sharding_key=nothing, _mediaType=nothing) -> QdrantCreateShardKey200Response, OpenAPI.Clients.ApiResponse <br/>
> delete_shard_key(_api::CollectionsApi, response_stream::Channel, collection_name::String; timeout=nothing, qdrant_drop_sharding_key=nothing, _mediaType=nothing) -> Channel{ QdrantCreateShardKey200Response }, OpenAPI.Clients.ApiResponse

Delete shard key

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CollectionsApi** | API context | 
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

# **delete_shard_snapshot**
> delete_shard_snapshot(_api::CollectionsApi, collection_name::String, shard_id::Int64, snapshot_name::String; wait=nothing, _mediaType=nothing) -> QdrantCreateShardKey200Response, OpenAPI.Clients.ApiResponse <br/>
> delete_shard_snapshot(_api::CollectionsApi, response_stream::Channel, collection_name::String, shard_id::Int64, snapshot_name::String; wait=nothing, _mediaType=nothing) -> Channel{ QdrantCreateShardKey200Response }, OpenAPI.Clients.ApiResponse

Delete shard snapshot

Delete snapshot of a shard for a collection

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CollectionsApi** | API context | 
**collection_name** | **String**| Name of the collection for which to delete a snapshot | [default to nothing]
**shard_id** | **Int64**| Id of the shard | [default to nothing]
**snapshot_name** | **String**| Name of the snapshot to delete | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wait** | **Bool**| If true, wait for changes to actually happen. If false - let changes happen in background. Default is true. | [default to nothing]

### Return type

[**QdrantCreateShardKey200Response**](QdrantCreateShardKey200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_snapshot**
> delete_snapshot(_api::CollectionsApi, collection_name::String, snapshot_name::String; wait=nothing, _mediaType=nothing) -> QdrantCreateShardKey200Response, OpenAPI.Clients.ApiResponse <br/>
> delete_snapshot(_api::CollectionsApi, response_stream::Channel, collection_name::String, snapshot_name::String; wait=nothing, _mediaType=nothing) -> Channel{ QdrantCreateShardKey200Response }, OpenAPI.Clients.ApiResponse

Delete collection snapshot

Delete snapshot for a collection

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CollectionsApi** | API context | 
**collection_name** | **String**| Name of the collection for which to delete a snapshot | [default to nothing]
**snapshot_name** | **String**| Name of the snapshot to delete | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wait** | **Bool**| If true, wait for changes to actually happen. If false - let changes happen in background. Default is true. | [default to nothing]

### Return type

[**QdrantCreateShardKey200Response**](QdrantCreateShardKey200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_collection**
> get_collection(_api::CollectionsApi, collection_name::String; _mediaType=nothing) -> QdrantGetCollection200Response, OpenAPI.Clients.ApiResponse <br/>
> get_collection(_api::CollectionsApi, response_stream::Channel, collection_name::String; _mediaType=nothing) -> Channel{ QdrantGetCollection200Response }, OpenAPI.Clients.ApiResponse

Collection info

Get detailed information about specified existing collection

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CollectionsApi** | API context | 
**collection_name** | **String**| Name of the collection to retrieve | [default to nothing]

### Return type

[**QdrantGetCollection200Response**](QdrantGetCollection200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_collection_aliases**
> get_collection_aliases(_api::CollectionsApi, collection_name::String; _mediaType=nothing) -> QdrantGetCollectionAliases200Response, OpenAPI.Clients.ApiResponse <br/>
> get_collection_aliases(_api::CollectionsApi, response_stream::Channel, collection_name::String; _mediaType=nothing) -> Channel{ QdrantGetCollectionAliases200Response }, OpenAPI.Clients.ApiResponse

List aliases for collection

Get list of all aliases for a collection

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CollectionsApi** | API context | 
**collection_name** | **String**| Name of the collection | [default to nothing]

### Return type

[**QdrantGetCollectionAliases200Response**](QdrantGetCollectionAliases200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_collections**
> get_collections(_api::CollectionsApi; _mediaType=nothing) -> QdrantGetCollections200Response, OpenAPI.Clients.ApiResponse <br/>
> get_collections(_api::CollectionsApi, response_stream::Channel; _mediaType=nothing) -> Channel{ QdrantGetCollections200Response }, OpenAPI.Clients.ApiResponse

List collections

Get list name of all existing collections

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**QdrantGetCollections200Response**](QdrantGetCollections200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_collections_aliases**
> get_collections_aliases(_api::CollectionsApi; _mediaType=nothing) -> QdrantGetCollectionAliases200Response, OpenAPI.Clients.ApiResponse <br/>
> get_collections_aliases(_api::CollectionsApi, response_stream::Channel; _mediaType=nothing) -> Channel{ QdrantGetCollectionAliases200Response }, OpenAPI.Clients.ApiResponse

List collections aliases

Get list of all existing collections aliases

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**QdrantGetCollectionAliases200Response**](QdrantGetCollectionAliases200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_shard_snapshot**
> get_shard_snapshot(_api::CollectionsApi, collection_name::String, shard_id::Int64, snapshot_name::String; _mediaType=nothing) -> String, OpenAPI.Clients.ApiResponse <br/>
> get_shard_snapshot(_api::CollectionsApi, response_stream::Channel, collection_name::String, shard_id::Int64, snapshot_name::String; _mediaType=nothing) -> Channel{ String }, OpenAPI.Clients.ApiResponse

Download collection snapshot

Download specified snapshot of a shard from a collection as a file

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CollectionsApi** | API context | 
**collection_name** | **String**| Name of the collection | [default to nothing]
**shard_id** | **Int64**| Id of the shard | [default to nothing]
**snapshot_name** | **String**| Name of the snapshot to download | [default to nothing]

### Return type

**String**

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_snapshot**
> get_snapshot(_api::CollectionsApi, collection_name::String, snapshot_name::String; _mediaType=nothing) -> String, OpenAPI.Clients.ApiResponse <br/>
> get_snapshot(_api::CollectionsApi, response_stream::Channel, collection_name::String, snapshot_name::String; _mediaType=nothing) -> Channel{ String }, OpenAPI.Clients.ApiResponse

Download collection snapshot

Download specified snapshot from a collection as a file

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CollectionsApi** | API context | 
**collection_name** | **String**| Name of the collection | [default to nothing]
**snapshot_name** | **String**| Name of the snapshot to download | [default to nothing]

### Return type

**String**

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **list_shard_snapshots**
> list_shard_snapshots(_api::CollectionsApi, collection_name::String, shard_id::Int64; _mediaType=nothing) -> QdrantListSnapshots200Response, OpenAPI.Clients.ApiResponse <br/>
> list_shard_snapshots(_api::CollectionsApi, response_stream::Channel, collection_name::String, shard_id::Int64; _mediaType=nothing) -> Channel{ QdrantListSnapshots200Response }, OpenAPI.Clients.ApiResponse

List shards snapshots for a collection

Get list of snapshots for a shard of a collection

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CollectionsApi** | API context | 
**collection_name** | **String**| Name of the collection | [default to nothing]
**shard_id** | **Int64**| Id of the shard | [default to nothing]

### Return type

[**QdrantListSnapshots200Response**](QdrantListSnapshots200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **list_snapshots**
> list_snapshots(_api::CollectionsApi, collection_name::String; _mediaType=nothing) -> QdrantListSnapshots200Response, OpenAPI.Clients.ApiResponse <br/>
> list_snapshots(_api::CollectionsApi, response_stream::Channel, collection_name::String; _mediaType=nothing) -> Channel{ QdrantListSnapshots200Response }, OpenAPI.Clients.ApiResponse

List collection snapshots

Get list of snapshots for a collection

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CollectionsApi** | API context | 
**collection_name** | **String**| Name of the collection | [default to nothing]

### Return type

[**QdrantListSnapshots200Response**](QdrantListSnapshots200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **recover_from_snapshot**
> recover_from_snapshot(_api::CollectionsApi, collection_name::String; wait=nothing, qdrant_snapshot_recover=nothing, _mediaType=nothing) -> QdrantCreateShardKey200Response, OpenAPI.Clients.ApiResponse <br/>
> recover_from_snapshot(_api::CollectionsApi, response_stream::Channel, collection_name::String; wait=nothing, qdrant_snapshot_recover=nothing, _mediaType=nothing) -> Channel{ QdrantCreateShardKey200Response }, OpenAPI.Clients.ApiResponse

Recover from a snapshot

Recover local collection data from a snapshot. This will overwrite any data, stored on this node, for the collection. If collection does not exist - it will be created.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CollectionsApi** | API context | 
**collection_name** | **String**| Name of the collection | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wait** | **Bool**| If true, wait for changes to actually happen. If false - let changes happen in background. Default is true. | [default to nothing]
 **qdrant_snapshot_recover** | [**QdrantSnapshotRecover**](QdrantSnapshotRecover.md)| Snapshot to recover from | 

### Return type

[**QdrantCreateShardKey200Response**](QdrantCreateShardKey200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **recover_from_uploaded_snapshot**
> recover_from_uploaded_snapshot(_api::CollectionsApi, collection_name::String; wait=nothing, priority=nothing, checksum=nothing, snapshot=nothing, _mediaType=nothing) -> QdrantCreateShardKey200Response, OpenAPI.Clients.ApiResponse <br/>
> recover_from_uploaded_snapshot(_api::CollectionsApi, response_stream::Channel, collection_name::String; wait=nothing, priority=nothing, checksum=nothing, snapshot=nothing, _mediaType=nothing) -> Channel{ QdrantCreateShardKey200Response }, OpenAPI.Clients.ApiResponse

Recover from an uploaded snapshot

Recover local collection data from an uploaded snapshot. This will overwrite any data, stored on this node, for the collection. If collection does not exist - it will be created.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CollectionsApi** | API context | 
**collection_name** | **String**| Name of the collection | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wait** | **Bool**| If true, wait for changes to actually happen. If false - let changes happen in background. Default is true. | [default to nothing]
 **priority** | [**QdrantSnapshotPriority**](.md)| Defines source of truth for snapshot recovery | [default to nothing]
 **checksum** | **String**| Optional SHA256 checksum to verify snapshot integrity before recovery. | [default to nothing]
 **snapshot** | **String****String**|  | [default to nothing]

### Return type

[**QdrantCreateShardKey200Response**](QdrantCreateShardKey200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **recover_shard_from_snapshot**
> recover_shard_from_snapshot(_api::CollectionsApi, collection_name::String, shard_id::Int64; wait=nothing, qdrant_shard_snapshot_recover=nothing, _mediaType=nothing) -> QdrantCreateShardKey200Response, OpenAPI.Clients.ApiResponse <br/>
> recover_shard_from_snapshot(_api::CollectionsApi, response_stream::Channel, collection_name::String, shard_id::Int64; wait=nothing, qdrant_shard_snapshot_recover=nothing, _mediaType=nothing) -> Channel{ QdrantCreateShardKey200Response }, OpenAPI.Clients.ApiResponse

Recover from a snapshot

Recover shard of a local collection data from a snapshot. This will overwrite any data, stored in this shard, for the collection.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CollectionsApi** | API context | 
**collection_name** | **String**| Name of the collection | [default to nothing]
**shard_id** | **Int64**| Id of the shard to recover | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wait** | **Bool**| If true, wait for changes to actually happen. If false - let changes happen in background. Default is true. | [default to nothing]
 **qdrant_shard_snapshot_recover** | [**QdrantShardSnapshotRecover**](QdrantShardSnapshotRecover.md)| Snapshot to recover from | 

### Return type

[**QdrantCreateShardKey200Response**](QdrantCreateShardKey200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **recover_shard_from_uploaded_snapshot**
> recover_shard_from_uploaded_snapshot(_api::CollectionsApi, collection_name::String, shard_id::Int64; wait=nothing, priority=nothing, checksum=nothing, snapshot=nothing, _mediaType=nothing) -> QdrantCreateShardKey200Response, OpenAPI.Clients.ApiResponse <br/>
> recover_shard_from_uploaded_snapshot(_api::CollectionsApi, response_stream::Channel, collection_name::String, shard_id::Int64; wait=nothing, priority=nothing, checksum=nothing, snapshot=nothing, _mediaType=nothing) -> Channel{ QdrantCreateShardKey200Response }, OpenAPI.Clients.ApiResponse

Recover shard from an uploaded snapshot

Recover shard of a local collection from an uploaded snapshot. This will overwrite any data, stored on this node, for the collection shard.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CollectionsApi** | API context | 
**collection_name** | **String**| Name of the collection | [default to nothing]
**shard_id** | **Int64**| Id of the shard to recover | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wait** | **Bool**| If true, wait for changes to actually happen. If false - let changes happen in background. Default is true. | [default to nothing]
 **priority** | [**QdrantSnapshotPriority**](.md)| Defines source of truth for snapshot recovery | [default to nothing]
 **checksum** | **String**| Optional SHA256 checksum to verify snapshot integrity before recovery. | [default to nothing]
 **snapshot** | **String****String**|  | [default to nothing]

### Return type

[**QdrantCreateShardKey200Response**](QdrantCreateShardKey200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_aliases**
> update_aliases(_api::CollectionsApi; timeout=nothing, qdrant_change_aliases_operation=nothing, _mediaType=nothing) -> QdrantCreateShardKey200Response, OpenAPI.Clients.ApiResponse <br/>
> update_aliases(_api::CollectionsApi, response_stream::Channel; timeout=nothing, qdrant_change_aliases_operation=nothing, _mediaType=nothing) -> Channel{ QdrantCreateShardKey200Response }, OpenAPI.Clients.ApiResponse

Update aliases of the collections

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CollectionsApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeout** | **Int64**| Wait for operation commit timeout in seconds.  If timeout is reached - request will return with service error.  | [default to nothing]
 **qdrant_change_aliases_operation** | [**QdrantChangeAliasesOperation**](QdrantChangeAliasesOperation.md)| Alias update operations | 

### Return type

[**QdrantCreateShardKey200Response**](QdrantCreateShardKey200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_collection**
> update_collection(_api::CollectionsApi, collection_name::String; timeout=nothing, qdrant_update_collection=nothing, _mediaType=nothing) -> QdrantCreateShardKey200Response, OpenAPI.Clients.ApiResponse <br/>
> update_collection(_api::CollectionsApi, response_stream::Channel, collection_name::String; timeout=nothing, qdrant_update_collection=nothing, _mediaType=nothing) -> Channel{ QdrantCreateShardKey200Response }, OpenAPI.Clients.ApiResponse

Update collection parameters

Update parameters of the existing collection

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CollectionsApi** | API context | 
**collection_name** | **String**| Name of the collection to update | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeout** | **Int64**| Wait for operation commit timeout in seconds.  If timeout is reached - request will return with service error.  | [default to nothing]
 **qdrant_update_collection** | [**QdrantUpdateCollection**](QdrantUpdateCollection.md)| New parameters | 

### Return type

[**QdrantCreateShardKey200Response**](QdrantCreateShardKey200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_collection_cluster**
> update_collection_cluster(_api::CollectionsApi, collection_name::String; timeout=nothing, qdrant_cluster_operations=nothing, _mediaType=nothing) -> QdrantCreateShardKey200Response, OpenAPI.Clients.ApiResponse <br/>
> update_collection_cluster(_api::CollectionsApi, response_stream::Channel, collection_name::String; timeout=nothing, qdrant_cluster_operations=nothing, _mediaType=nothing) -> Channel{ QdrantCreateShardKey200Response }, OpenAPI.Clients.ApiResponse

Update collection cluster setup

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CollectionsApi** | API context | 
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

