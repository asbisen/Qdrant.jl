# QdrantSearchParams


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hnsw_ef** | **Int64** | Params relevant to HNSW index Size of the beam in a beam-search. Larger the value - more accurate the result, more time required for search. | [optional] [default to nothing]
**exact** | **Bool** | Search without approximation. If set to true, search may run long but with exact results. | [optional] [default to false]
**quantization** | [***QdrantQuantizationSearchParams**](QdrantQuantizationSearchParams.md) |  | [optional] [default to nothing]
**indexed_only** | **Bool** | If enabled, the engine will only perform search among indexed or small segments. Using this option prevents slow searches in case of delayed index, but does not guarantee that all uploaded vectors will be included in search results | [optional] [default to false]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


