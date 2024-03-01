# QdrantUpdateCollection


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vectors** | [**Dict{String, QdrantVectorParamsDiff}**](QdrantVectorParamsDiff.md) | Vector update params for multiple vectors  { \&quot;vector_name\&quot;: { \&quot;hnsw_config\&quot;: { \&quot;m\&quot;: 8 } } } | [optional] [default to nothing]
**optimizers_config** | [***QdrantOptimizersConfigDiff**](QdrantOptimizersConfigDiff.md) |  | [optional] [default to nothing]
**params** | [***QdrantCollectionParamsDiff**](QdrantCollectionParamsDiff.md) |  | [optional] [default to nothing]
**hnsw_config** | [***QdrantHnswConfigDiff**](QdrantHnswConfigDiff.md) |  | [optional] [default to nothing]
**quantization_config** | [***QdrantQuantizationConfigDiff**](QdrantQuantizationConfigDiff.md) |  | [optional] [default to nothing]
**sparse_vectors** | [**Dict{String, QdrantSparseVectorParams}**](QdrantSparseVectorParams.md) |  | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


