# QdrantPrefetch


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**prefetch** | [***QdrantPrefetchPrefetch**](QdrantPrefetchPrefetch.md) |  | [optional] [default to nothing]
**query** | [***QdrantQueryInterface**](QdrantQueryInterface.md) |  | [optional] [default to nothing]
**var&quot;using&quot;** | **String** | Define which vector name to use for querying. If missing, the default vector is used. | [optional] [default to nothing]
**filter** | [***QdrantFilter**](QdrantFilter.md) |  | [optional] [default to nothing]
**params** | [***QdrantSearchParams**](QdrantSearchParams.md) |  | [optional] [default to nothing]
**score_threshold** | **Float32** | Return points with scores better than this threshold. | [optional] [default to nothing]
**limit** | **Int64** | Max number of points to return. Default is 10. | [optional] [default to nothing]
**lookup_from** | [***QdrantLookupLocation**](QdrantLookupLocation.md) |  | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


