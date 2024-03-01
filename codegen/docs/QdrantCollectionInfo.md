# QdrantCollectionInfo


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | [***QdrantCollectionStatus**](QdrantCollectionStatus.md) |  | [default to nothing]
**optimizer_status** | [***QdrantOptimizersStatus**](QdrantOptimizersStatus.md) |  | [default to nothing]
**vectors_count** | **Int64** | Approximate number of vectors in collection. All vectors in collection are available for querying. Calculated as &#x60;points_count x vectors_per_point&#x60;. Where &#x60;vectors_per_point&#x60; is a number of named vectors in schema. | [optional] [default to nothing]
**indexed_vectors_count** | **Int64** | Approximate number of indexed vectors in the collection. Indexed vectors in large segments are faster to query, as it is stored in a specialized vector index. | [optional] [default to nothing]
**points_count** | **Int64** | Approximate number of points (vectors + payloads) in collection. Each point could be accessed by unique id. | [optional] [default to nothing]
**segments_count** | **Int64** | Number of segments in collection. Each segment has independent vector as payload indexes | [default to nothing]
**config** | [***QdrantCollectionConfig**](QdrantCollectionConfig.md) |  | [default to nothing]
**payload_schema** | [**Dict{String, QdrantPayloadIndexInfo}**](QdrantPayloadIndexInfo.md) | Types of stored payload | [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


