# QdrantQueryRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**shard_key** | [***QdrantShardKeySelector**](QdrantShardKeySelector.md) |  | [optional] [default to nothing]
**prefetch** | [***QdrantQueryRequestPrefetch**](QdrantQueryRequestPrefetch.md) |  | [optional] [default to nothing]
**query** | [***QdrantQueryInterface**](QdrantQueryInterface.md) |  | [optional] [default to nothing]
**var&quot;using&quot;** | **String** | Define which vector name to use for querying. If missing, the default vector is used. | [optional] [default to nothing]
**filter** | [***QdrantFilter**](QdrantFilter.md) |  | [optional] [default to nothing]
**params** | [***QdrantSearchParams**](QdrantSearchParams.md) |  | [optional] [default to nothing]
**score_threshold** | **Float32** | Return points with scores better than this threshold. | [optional] [default to nothing]
**limit** | **Int64** | Max number of points to return. Default is 10. | [optional] [default to nothing]
**offset** | **Int64** | Offset of the result. Skip this many points. Default is 0 | [optional] [default to nothing]
**with_vector** | [***QdrantWithVector**](QdrantWithVector.md) |  | [optional] [default to nothing]
**with_payload** | [***QdrantWithPayloadInterface**](QdrantWithPayloadInterface.md) |  | [optional] [default to nothing]
**lookup_from** | [***QdrantLookupLocation**](QdrantLookupLocation.md) |  | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


