# QdrantQuantizationSearchParams


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ignore** | **Bool** | If true, quantized vectors are ignored. Default is false. | [optional] [default to false]
**rescore** | **Bool** | If true, use original vectors to re-score top-k results. Might require more time in case if original vectors are stored on disk. If not set, qdrant decides automatically apply rescoring or not. | [optional] [default to nothing]
**oversampling** | **Float64** | Oversampling factor for quantization. Default is 1.0.  Defines how many extra vectors should be pre-selected using quantized index, and then re-scored using original vectors.  For example, if &#x60;oversampling&#x60; is 2.4 and &#x60;limit&#x60; is 100, then 240 vectors will be pre-selected using quantized index, and then top-100 will be returned after re-scoring. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


