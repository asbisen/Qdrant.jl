# QdrantOperationDurationStatistics


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**count** | **Int64** |  | [default to nothing]
**fail_count** | **Int64** |  | [optional] [default to nothing]
**avg_duration_micros** | **Float32** | The average time taken by 128 latest operations, calculated as a weighted mean. | [optional] [default to nothing]
**min_duration_micros** | **Float32** | The minimum duration of the operations across all the measurements. | [optional] [default to nothing]
**max_duration_micros** | **Float32** | The maximum duration of the operations across all the measurements. | [optional] [default to nothing]
**total_duration_micros** | **Int64** | The total duration of all operations in microseconds. | [default to nothing]
**last_responded** | **ZonedDateTime** |  | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


