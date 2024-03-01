# QdrantSearchGroupsRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**shard_key** | [***QdrantShardKeySelector**](QdrantShardKeySelector.md) |  | [optional] [default to nothing]
**vector** | [***QdrantNamedVectorStruct**](QdrantNamedVectorStruct.md) |  | [default to nothing]
**filter** | [***QdrantFilter**](QdrantFilter.md) |  | [optional] [default to nothing]
**params** | [***QdrantSearchParams**](QdrantSearchParams.md) |  | [optional] [default to nothing]
**with_payload** | [***QdrantWithPayloadInterface**](QdrantWithPayloadInterface.md) |  | [optional] [default to nothing]
**with_vector** | [***QdrantWithVector**](QdrantWithVector.md) |  | [optional] [default to nothing]
**score_threshold** | **Float32** | Define a minimal score threshold for the result. If defined, less similar results will not be returned. Score of the returned result might be higher or smaller than the threshold depending on the Distance function used. E.g. for cosine similarity only higher scores will be returned. | [optional] [default to nothing]
**group_by** | **String** | Payload field to group by, must be a string or number field. If the field contains more than 1 value, all values will be used for grouping. One point can be in multiple groups. | [default to nothing]
**group_size** | **Int64** | Maximum amount of points to return per group | [default to nothing]
**limit** | **Int64** | Maximum amount of groups to return | [default to nothing]
**with_lookup** | [***QdrantWithLookupInterface**](QdrantWithLookupInterface.md) |  | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


