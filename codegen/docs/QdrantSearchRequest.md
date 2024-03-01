# QdrantSearchRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**shard_key** | [***QdrantShardKeySelector**](QdrantShardKeySelector.md) |  | [optional] [default to nothing]
**vector** | [***QdrantNamedVectorStruct**](QdrantNamedVectorStruct.md) |  | [default to nothing]
**filter** | [***QdrantFilter**](QdrantFilter.md) |  | [optional] [default to nothing]
**params** | [***QdrantSearchParams**](QdrantSearchParams.md) |  | [optional] [default to nothing]
**limit** | **Int64** | Max number of result to return | [default to nothing]
**offset** | **Int64** | Offset of the first result to return. May be used to paginate results. Note: large offset values may cause performance issues. | [optional] [default to nothing]
**with_payload** | [***QdrantWithPayloadInterface**](QdrantWithPayloadInterface.md) |  | [optional] [default to nothing]
**with_vector** | [***QdrantWithVector**](QdrantWithVector.md) |  | [optional] [default to nothing]
**score_threshold** | **Float32** | Define a minimal score threshold for the result. If defined, less similar results will not be returned. Score of the returned result might be higher or smaller than the threshold depending on the Distance function used. E.g. for cosine similarity only higher scores will be returned. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


