# QdrantQueryGroupsRequest


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
**with_vector** | [***QdrantWithVector**](QdrantWithVector.md) |  | [optional] [default to nothing]
**with_payload** | [***QdrantWithPayloadInterface**](QdrantWithPayloadInterface.md) |  | [optional] [default to nothing]
**lookup_from** | [***QdrantLookupLocation**](QdrantLookupLocation.md) |  | [optional] [default to nothing]
**group_by** | **String** | Payload field to group by, must be a string or number field. If the field contains more than 1 value, all values will be used for grouping. One point can be in multiple groups. | [default to nothing]
**group_size** | **Int64** | Maximum amount of points to return per group. Default is 3. | [optional] [default to nothing]
**limit** | **Int64** | Maximum amount of groups to return. Default is 10. | [optional] [default to nothing]
**with_lookup** | [***QdrantWithLookupInterface**](QdrantWithLookupInterface.md) |  | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


