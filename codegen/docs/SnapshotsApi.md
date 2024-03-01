# SnapshotsApi

All URIs are relative to *http://localhost:6333*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_full_snapshot**](SnapshotsApi.md#create_full_snapshot) | **POST** /snapshots | Create storage snapshot
[**create_shard_snapshot**](SnapshotsApi.md#create_shard_snapshot) | **POST** /collections/{collection_name}/shards/{shard_id}/snapshots | Create shard snapshot
[**create_snapshot**](SnapshotsApi.md#create_snapshot) | **POST** /collections/{collection_name}/snapshots | Create collection snapshot
[**delete_full_snapshot**](SnapshotsApi.md#delete_full_snapshot) | **DELETE** /snapshots/{snapshot_name} | Delete storage snapshot
[**delete_shard_snapshot**](SnapshotsApi.md#delete_shard_snapshot) | **DELETE** /collections/{collection_name}/shards/{shard_id}/snapshots/{snapshot_name} | Delete shard snapshot
[**delete_snapshot**](SnapshotsApi.md#delete_snapshot) | **DELETE** /collections/{collection_name}/snapshots/{snapshot_name} | Delete collection snapshot
[**get_full_snapshot**](SnapshotsApi.md#get_full_snapshot) | **GET** /snapshots/{snapshot_name} | Download storage snapshot
[**get_shard_snapshot**](SnapshotsApi.md#get_shard_snapshot) | **GET** /collections/{collection_name}/shards/{shard_id}/snapshots/{snapshot_name} | Download collection snapshot
[**get_snapshot**](SnapshotsApi.md#get_snapshot) | **GET** /collections/{collection_name}/snapshots/{snapshot_name} | Download collection snapshot
[**list_full_snapshots**](SnapshotsApi.md#list_full_snapshots) | **GET** /snapshots | List of storage snapshots
[**list_shard_snapshots**](SnapshotsApi.md#list_shard_snapshots) | **GET** /collections/{collection_name}/shards/{shard_id}/snapshots | List shards snapshots for a collection
[**list_snapshots**](SnapshotsApi.md#list_snapshots) | **GET** /collections/{collection_name}/snapshots | List collection snapshots
[**recover_from_snapshot**](SnapshotsApi.md#recover_from_snapshot) | **PUT** /collections/{collection_name}/snapshots/recover | Recover from a snapshot
[**recover_from_uploaded_snapshot**](SnapshotsApi.md#recover_from_uploaded_snapshot) | **POST** /collections/{collection_name}/snapshots/upload | Recover from an uploaded snapshot
[**recover_shard_from_snapshot**](SnapshotsApi.md#recover_shard_from_snapshot) | **PUT** /collections/{collection_name}/shards/{shard_id}/snapshots/recover | Recover from a snapshot
[**recover_shard_from_uploaded_snapshot**](SnapshotsApi.md#recover_shard_from_uploaded_snapshot) | **POST** /collections/{collection_name}/shards/{shard_id}/snapshots/upload | Recover shard from an uploaded snapshot


# **create_full_snapshot**
> create_full_snapshot(_api::SnapshotsApi; wait=nothing, _mediaType=nothing) -> QdrantCreateSnapshot200Response, OpenAPI.Clients.ApiResponse <br/>
> create_full_snapshot(_api::SnapshotsApi, response_stream::Channel; wait=nothing, _mediaType=nothing) -> Channel{ QdrantCreateSnapshot200Response }, OpenAPI.Clients.ApiResponse

Create storage snapshot

Create new snapshot of the whole storage

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SnapshotsApi** | API context | 

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

# **create_shard_snapshot**
> create_shard_snapshot(_api::SnapshotsApi, collection_name::String, shard_id::Int64; wait=nothing, _mediaType=nothing) -> QdrantCreateSnapshot200Response, OpenAPI.Clients.ApiResponse <br/>
> create_shard_snapshot(_api::SnapshotsApi, response_stream::Channel, collection_name::String, shard_id::Int64; wait=nothing, _mediaType=nothing) -> Channel{ QdrantCreateSnapshot200Response }, OpenAPI.Clients.ApiResponse

Create shard snapshot

Create new snapshot of a shard for a collection

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SnapshotsApi** | API context | 
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
> create_snapshot(_api::SnapshotsApi, collection_name::String; wait=nothing, _mediaType=nothing) -> QdrantCreateSnapshot200Response, OpenAPI.Clients.ApiResponse <br/>
> create_snapshot(_api::SnapshotsApi, response_stream::Channel, collection_name::String; wait=nothing, _mediaType=nothing) -> Channel{ QdrantCreateSnapshot200Response }, OpenAPI.Clients.ApiResponse

Create collection snapshot

Create new snapshot for a collection

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SnapshotsApi** | API context | 
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

# **delete_full_snapshot**
> delete_full_snapshot(_api::SnapshotsApi, snapshot_name::String; wait=nothing, _mediaType=nothing) -> QdrantCreateShardKey200Response, OpenAPI.Clients.ApiResponse <br/>
> delete_full_snapshot(_api::SnapshotsApi, response_stream::Channel, snapshot_name::String; wait=nothing, _mediaType=nothing) -> Channel{ QdrantCreateShardKey200Response }, OpenAPI.Clients.ApiResponse

Delete storage snapshot

Delete snapshot of the whole storage

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SnapshotsApi** | API context | 
**snapshot_name** | **String**| Name of the full snapshot to delete | [default to nothing]

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

# **delete_shard_snapshot**
> delete_shard_snapshot(_api::SnapshotsApi, collection_name::String, shard_id::Int64, snapshot_name::String; wait=nothing, _mediaType=nothing) -> QdrantCreateShardKey200Response, OpenAPI.Clients.ApiResponse <br/>
> delete_shard_snapshot(_api::SnapshotsApi, response_stream::Channel, collection_name::String, shard_id::Int64, snapshot_name::String; wait=nothing, _mediaType=nothing) -> Channel{ QdrantCreateShardKey200Response }, OpenAPI.Clients.ApiResponse

Delete shard snapshot

Delete snapshot of a shard for a collection

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SnapshotsApi** | API context | 
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
> delete_snapshot(_api::SnapshotsApi, collection_name::String, snapshot_name::String; wait=nothing, _mediaType=nothing) -> QdrantCreateShardKey200Response, OpenAPI.Clients.ApiResponse <br/>
> delete_snapshot(_api::SnapshotsApi, response_stream::Channel, collection_name::String, snapshot_name::String; wait=nothing, _mediaType=nothing) -> Channel{ QdrantCreateShardKey200Response }, OpenAPI.Clients.ApiResponse

Delete collection snapshot

Delete snapshot for a collection

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SnapshotsApi** | API context | 
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

# **get_full_snapshot**
> get_full_snapshot(_api::SnapshotsApi, snapshot_name::String; _mediaType=nothing) -> String, OpenAPI.Clients.ApiResponse <br/>
> get_full_snapshot(_api::SnapshotsApi, response_stream::Channel, snapshot_name::String; _mediaType=nothing) -> Channel{ String }, OpenAPI.Clients.ApiResponse

Download storage snapshot

Download specified snapshot of the whole storage as a file

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SnapshotsApi** | API context | 
**snapshot_name** | **String**| Name of the snapshot to download | [default to nothing]

### Return type

**String**

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_shard_snapshot**
> get_shard_snapshot(_api::SnapshotsApi, collection_name::String, shard_id::Int64, snapshot_name::String; _mediaType=nothing) -> String, OpenAPI.Clients.ApiResponse <br/>
> get_shard_snapshot(_api::SnapshotsApi, response_stream::Channel, collection_name::String, shard_id::Int64, snapshot_name::String; _mediaType=nothing) -> Channel{ String }, OpenAPI.Clients.ApiResponse

Download collection snapshot

Download specified snapshot of a shard from a collection as a file

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SnapshotsApi** | API context | 
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
> get_snapshot(_api::SnapshotsApi, collection_name::String, snapshot_name::String; _mediaType=nothing) -> String, OpenAPI.Clients.ApiResponse <br/>
> get_snapshot(_api::SnapshotsApi, response_stream::Channel, collection_name::String, snapshot_name::String; _mediaType=nothing) -> Channel{ String }, OpenAPI.Clients.ApiResponse

Download collection snapshot

Download specified snapshot from a collection as a file

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SnapshotsApi** | API context | 
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

# **list_full_snapshots**
> list_full_snapshots(_api::SnapshotsApi; _mediaType=nothing) -> QdrantListSnapshots200Response, OpenAPI.Clients.ApiResponse <br/>
> list_full_snapshots(_api::SnapshotsApi, response_stream::Channel; _mediaType=nothing) -> Channel{ QdrantListSnapshots200Response }, OpenAPI.Clients.ApiResponse

List of storage snapshots

Get list of snapshots of the whole storage

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**QdrantListSnapshots200Response**](QdrantListSnapshots200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **list_shard_snapshots**
> list_shard_snapshots(_api::SnapshotsApi, collection_name::String, shard_id::Int64; _mediaType=nothing) -> QdrantListSnapshots200Response, OpenAPI.Clients.ApiResponse <br/>
> list_shard_snapshots(_api::SnapshotsApi, response_stream::Channel, collection_name::String, shard_id::Int64; _mediaType=nothing) -> Channel{ QdrantListSnapshots200Response }, OpenAPI.Clients.ApiResponse

List shards snapshots for a collection

Get list of snapshots for a shard of a collection

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SnapshotsApi** | API context | 
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
> list_snapshots(_api::SnapshotsApi, collection_name::String; _mediaType=nothing) -> QdrantListSnapshots200Response, OpenAPI.Clients.ApiResponse <br/>
> list_snapshots(_api::SnapshotsApi, response_stream::Channel, collection_name::String; _mediaType=nothing) -> Channel{ QdrantListSnapshots200Response }, OpenAPI.Clients.ApiResponse

List collection snapshots

Get list of snapshots for a collection

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SnapshotsApi** | API context | 
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
> recover_from_snapshot(_api::SnapshotsApi, collection_name::String; wait=nothing, qdrant_snapshot_recover=nothing, _mediaType=nothing) -> QdrantCreateShardKey200Response, OpenAPI.Clients.ApiResponse <br/>
> recover_from_snapshot(_api::SnapshotsApi, response_stream::Channel, collection_name::String; wait=nothing, qdrant_snapshot_recover=nothing, _mediaType=nothing) -> Channel{ QdrantCreateShardKey200Response }, OpenAPI.Clients.ApiResponse

Recover from a snapshot

Recover local collection data from a snapshot. This will overwrite any data, stored on this node, for the collection. If collection does not exist - it will be created.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SnapshotsApi** | API context | 
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
> recover_from_uploaded_snapshot(_api::SnapshotsApi, collection_name::String; wait=nothing, priority=nothing, snapshot=nothing, _mediaType=nothing) -> QdrantCreateShardKey200Response, OpenAPI.Clients.ApiResponse <br/>
> recover_from_uploaded_snapshot(_api::SnapshotsApi, response_stream::Channel, collection_name::String; wait=nothing, priority=nothing, snapshot=nothing, _mediaType=nothing) -> Channel{ QdrantCreateShardKey200Response }, OpenAPI.Clients.ApiResponse

Recover from an uploaded snapshot

Recover local collection data from an uploaded snapshot. This will overwrite any data, stored on this node, for the collection. If collection does not exist - it will be created.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SnapshotsApi** | API context | 
**collection_name** | **String**| Name of the collection | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wait** | **Bool**| If true, wait for changes to actually happen. If false - let changes happen in background. Default is true. | [default to nothing]
 **priority** | [**QdrantSnapshotPriority**](.md)| Defines source of truth for snapshot recovery | [default to nothing]
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
> recover_shard_from_snapshot(_api::SnapshotsApi, collection_name::String, shard_id::Int64; wait=nothing, qdrant_shard_snapshot_recover=nothing, _mediaType=nothing) -> QdrantCreateShardKey200Response, OpenAPI.Clients.ApiResponse <br/>
> recover_shard_from_snapshot(_api::SnapshotsApi, response_stream::Channel, collection_name::String, shard_id::Int64; wait=nothing, qdrant_shard_snapshot_recover=nothing, _mediaType=nothing) -> Channel{ QdrantCreateShardKey200Response }, OpenAPI.Clients.ApiResponse

Recover from a snapshot

Recover shard of a local collection data from a snapshot. This will overwrite any data, stored in this shard, for the collection.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SnapshotsApi** | API context | 
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
> recover_shard_from_uploaded_snapshot(_api::SnapshotsApi, collection_name::String, shard_id::Int64; wait=nothing, priority=nothing, snapshot=nothing, _mediaType=nothing) -> QdrantCreateShardKey200Response, OpenAPI.Clients.ApiResponse <br/>
> recover_shard_from_uploaded_snapshot(_api::SnapshotsApi, response_stream::Channel, collection_name::String, shard_id::Int64; wait=nothing, priority=nothing, snapshot=nothing, _mediaType=nothing) -> Channel{ QdrantCreateShardKey200Response }, OpenAPI.Clients.ApiResponse

Recover shard from an uploaded snapshot

Recover shard of a local collection from an uploaded snapshot. This will overwrite any data, stored on this node, for the collection shard.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SnapshotsApi** | API context | 
**collection_name** | **String**| Name of the collection | [default to nothing]
**shard_id** | **Int64**| Id of the shard to recover | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wait** | **Bool**| If true, wait for changes to actually happen. If false - let changes happen in background. Default is true. | [default to nothing]
 **priority** | [**QdrantSnapshotPriority**](.md)| Defines source of truth for snapshot recovery | [default to nothing]
 **snapshot** | **String****String**|  | [default to nothing]

### Return type

[**QdrantCreateShardKey200Response**](QdrantCreateShardKey200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

