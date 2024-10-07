# BetaApi

All URIs are relative to *http://localhost:6333*

Method | HTTP request | Description
------------- | ------------- | -------------
[**clear_issues**](BetaApi.md#clear_issues) | **DELETE** /issues | Clear issues
[**get_issues**](BetaApi.md#get_issues) | **GET** /issues | Get issues


# **clear_issues**
> clear_issues(_api::BetaApi; _mediaType=nothing) -> Bool, OpenAPI.Clients.ApiResponse <br/>
> clear_issues(_api::BetaApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Bool }, OpenAPI.Clients.ApiResponse

Clear issues

Removes all issues reported so far

### Required Parameters
This endpoint does not need any parameter.

### Return type

**Bool**

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_issues**
> get_issues(_api::BetaApi; _mediaType=nothing) -> Any, OpenAPI.Clients.ApiResponse <br/>
> get_issues(_api::BetaApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Any }, OpenAPI.Clients.ApiResponse

Get issues

Get a report of performance issues and configuration suggestions

### Required Parameters
This endpoint does not need any parameter.

### Return type

**Any**

### Authorization

[api-key](../README.md#api-key), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

