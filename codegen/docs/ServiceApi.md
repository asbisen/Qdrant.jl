# ServiceApi

All URIs are relative to *http://localhost:6333*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_locks**](ServiceApi.md#get_locks) | **GET** /locks | Get lock options
[**healthz**](ServiceApi.md#healthz) | **GET** /healthz | Kubernetes healthz endpoint
[**livez**](ServiceApi.md#livez) | **GET** /livez | Kubernetes livez endpoint
[**metrics**](ServiceApi.md#metrics) | **GET** /metrics | Collect Prometheus metrics data
[**post_locks**](ServiceApi.md#post_locks) | **POST** /locks | Set lock options
[**readyz**](ServiceApi.md#readyz) | **GET** /readyz | Kubernetes readyz endpoint
[**telemetry**](ServiceApi.md#telemetry) | **GET** /telemetry | Collect telemetry data


# **get_locks**
> get_locks(_api::ServiceApi; _mediaType=nothing) -> QdrantGetLocks200Response, OpenAPI.Clients.ApiResponse <br/>
> get_locks(_api::ServiceApi, response_stream::Channel; _mediaType=nothing) -> Channel{ QdrantGetLocks200Response }, OpenAPI.Clients.ApiResponse

Get lock options

Get lock options. If write is locked, all write operations and collection creation are forbidden

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**QdrantGetLocks200Response**](QdrantGetLocks200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **healthz**
> healthz(_api::ServiceApi; _mediaType=nothing) -> String, OpenAPI.Clients.ApiResponse <br/>
> healthz(_api::ServiceApi, response_stream::Channel; _mediaType=nothing) -> Channel{ String }, OpenAPI.Clients.ApiResponse

Kubernetes healthz endpoint

An endpoint for health checking used in Kubernetes.

### Required Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **livez**
> livez(_api::ServiceApi; _mediaType=nothing) -> String, OpenAPI.Clients.ApiResponse <br/>
> livez(_api::ServiceApi, response_stream::Channel; _mediaType=nothing) -> Channel{ String }, OpenAPI.Clients.ApiResponse

Kubernetes livez endpoint

An endpoint for health checking used in Kubernetes.

### Required Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **metrics**
> metrics(_api::ServiceApi; anonymize=nothing, _mediaType=nothing) -> String, OpenAPI.Clients.ApiResponse <br/>
> metrics(_api::ServiceApi, response_stream::Channel; anonymize=nothing, _mediaType=nothing) -> Channel{ String }, OpenAPI.Clients.ApiResponse

Collect Prometheus metrics data

Collect metrics data including app info, collections info, cluster info and statistics

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ServiceApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **anonymize** | **Bool**| If true, anonymize result | [default to nothing]

### Return type

**String**

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **post_locks**
> post_locks(_api::ServiceApi; qdrant_locks_option=nothing, _mediaType=nothing) -> QdrantGetLocks200Response, OpenAPI.Clients.ApiResponse <br/>
> post_locks(_api::ServiceApi, response_stream::Channel; qdrant_locks_option=nothing, _mediaType=nothing) -> Channel{ QdrantGetLocks200Response }, OpenAPI.Clients.ApiResponse

Set lock options

Set lock options. If write is locked, all write operations and collection creation are forbidden. Returns previous lock options

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ServiceApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **qdrant_locks_option** | [**QdrantLocksOption**](QdrantLocksOption.md)| Lock options and optional error message | 

### Return type

[**QdrantGetLocks200Response**](QdrantGetLocks200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **readyz**
> readyz(_api::ServiceApi; _mediaType=nothing) -> String, OpenAPI.Clients.ApiResponse <br/>
> readyz(_api::ServiceApi, response_stream::Channel; _mediaType=nothing) -> Channel{ String }, OpenAPI.Clients.ApiResponse

Kubernetes readyz endpoint

An endpoint for health checking used in Kubernetes.

### Required Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **telemetry**
> telemetry(_api::ServiceApi; anonymize=nothing, _mediaType=nothing) -> QdrantTelemetry200Response, OpenAPI.Clients.ApiResponse <br/>
> telemetry(_api::ServiceApi, response_stream::Channel; anonymize=nothing, _mediaType=nothing) -> Channel{ QdrantTelemetry200Response }, OpenAPI.Clients.ApiResponse

Collect telemetry data

Collect telemetry data including app info, system info, collections info, cluster info, configs and statistics

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ServiceApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **anonymize** | **Bool**| If true, anonymize result | [default to nothing]

### Return type

[**QdrantTelemetry200Response**](QdrantTelemetry200Response.md)

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

