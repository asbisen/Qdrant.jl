# QdrantScalarQuantizationConfig


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [***QdrantScalarType**](QdrantScalarType.md) |  | [default to nothing]
**quantile** | **Float32** | Quantile for quantization. Expected value range in [0.5, 1.0]. If not set - use the whole range of values | [optional] [default to nothing]
**always_ram** | **Bool** | If true - quantized vectors always will be stored in RAM, ignoring the config of main storage | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


