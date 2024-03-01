# QdrantCollectionParams


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vectors** | [***QdrantVectorsConfig**](QdrantVectorsConfig.md) |  | [optional] [default to nothing]
**shard_number** | **Int64** | Number of shards the collection has | [optional] [default to 1]
**sharding_method** | [***QdrantShardingMethod**](QdrantShardingMethod.md) |  | [optional] [default to nothing]
**replication_factor** | **Int64** | Number of replicas for each shard | [optional] [default to 1]
**write_consistency_factor** | **Int64** | Defines how many replicas should apply the operation for us to consider it successful. Increasing this number will make the collection more resilient to inconsistencies, but will also make it fail if not enough replicas are available. Does not have any performance impact. | [optional] [default to 1]
**read_fan_out_factor** | **Int64** | Defines how many additional replicas should be processing read request at the same time. Default value is Auto, which means that fan-out will be determined automatically based on the busyness of the local replica. Having more than 0 might be useful to smooth latency spikes of individual nodes. | [optional] [default to nothing]
**on_disk_payload** | **Bool** | If true - point&#39;s payload will not be stored in memory. It will be read from the disk every time it is requested. This setting saves RAM by (slightly) increasing the response time. Note: those payload values that are involved in filtering and are indexed - remain in RAM. | [optional] [default to false]
**sparse_vectors** | [**Dict{String, QdrantSparseVectorParams}**](QdrantSparseVectorParams.md) | Configuration of the sparse vector storage | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


