# QdrantSparseIndexParams


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**full_scan_threshold** | **Int64** | We prefer a full scan search upto (excluding) this number of vectors.  Note: this is number of vectors, not KiloBytes. | [optional] [default to nothing]
**on_disk** | **Bool** | Store index on disk. If set to false, the index will be stored in RAM. Default: false | [optional] [default to nothing]
**datatype** | [***QdrantDatatype**](QdrantDatatype.md) |  | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


