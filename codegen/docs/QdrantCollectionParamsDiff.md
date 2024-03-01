# QdrantCollectionParamsDiff


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**replication_factor** | **Int64** | Number of replicas for each shard | [optional] [default to nothing]
**write_consistency_factor** | **Int64** | Minimal number successful responses from replicas to consider operation successful | [optional] [default to nothing]
**read_fan_out_factor** | **Int64** | Fan-out every read request to these many additional remote nodes (and return first available response) | [optional] [default to nothing]
**on_disk_payload** | **Bool** | If true - point&#39;s payload will not be stored in memory. It will be read from the disk every time it is requested. This setting saves RAM by (slightly) increasing the response time. Note: those payload values that are involved in filtering and are indexed - remain in RAM. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


