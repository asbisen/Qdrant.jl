# QdrantDiscoverRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**shard_key** | [***QdrantShardKeySelector**](QdrantShardKeySelector.md) |  | [optional] [default to nothing]
**target** | [***QdrantRecommendExample**](QdrantRecommendExample.md) |  | [optional] [default to nothing]
**context** | [**Vector{QdrantContextExamplePair}**](QdrantContextExamplePair.md) | Pairs of { positive, negative } examples to constrain the search.  When using only the context (without a target), a special search - called context search - is performed where pairs of points are used to generate a loss that guides the search towards the zone where most positive examples overlap. This means that the score minimizes the scenario of finding a point closer to a negative than to a positive part of a pair.  Since the score of a context relates to loss, the maximum score a point can get is 0.0, and it becomes normal that many points can have a score of 0.0.  For discovery search (when including a target), the context part of the score for each pair is calculated +1 if the point is closer to a positive than to a negative part of a pair, and -1 otherwise. | [optional] [default to nothing]
**filter** | [***QdrantFilter**](QdrantFilter.md) |  | [optional] [default to nothing]
**params** | [***QdrantSearchParams**](QdrantSearchParams.md) |  | [optional] [default to nothing]
**limit** | **Int64** | Max number of result to return | [default to nothing]
**offset** | **Int64** | Offset of the first result to return. May be used to paginate results. Note: large offset values may cause performance issues. | [optional] [default to nothing]
**with_payload** | [***QdrantWithPayloadInterface**](QdrantWithPayloadInterface.md) |  | [optional] [default to nothing]
**with_vector** | [***QdrantWithVector**](QdrantWithVector.md) |  | [optional] [default to nothing]
**var&quot;using&quot;** | **String** |  | [optional] [default to nothing]
**lookup_from** | [***QdrantLookupLocation**](QdrantLookupLocation.md) |  | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


