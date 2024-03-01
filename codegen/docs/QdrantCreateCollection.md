# QdrantCreateCollection


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vectors** | [***QdrantVectorsConfig**](QdrantVectorsConfig.md) |  | [optional] [default to nothing]
**shard_number** | **Int64** | For auto sharding: Number of shards in collection. - Default is 1 for standalone, otherwise equal to the number of nodes - Minimum is 1 For custom sharding: Number of shards in collection per shard group. - Default is 1, meaning that each shard key will be mapped to a single shard - Minimum is 1 | [optional] [default to nothing]
**sharding_method** | [***QdrantShardingMethod**](QdrantShardingMethod.md) |  | [optional] [default to nothing]
**replication_factor** | **Int64** | Number of shards replicas. Default is 1 Minimum is 1 | [optional] [default to nothing]
**write_consistency_factor** | **Int64** | Defines how many replicas should apply the operation for us to consider it successful. Increasing this number will make the collection more resilient to inconsistencies, but will also make it fail if not enough replicas are available. Does not have any performance impact. | [optional] [default to nothing]
**on_disk_payload** | **Bool** | If true - point&#39;s payload will not be stored in memory. It will be read from the disk every time it is requested. This setting saves RAM by (slightly) increasing the response time. Note: those payload values that are involved in filtering and are indexed - remain in RAM. | [optional] [default to nothing]
**hnsw_config** | [***QdrantHnswConfigDiff**](QdrantHnswConfigDiff.md) |  | [optional] [default to nothing]
**wal_config** | [***QdrantWalConfigDiff**](QdrantWalConfigDiff.md) |  | [optional] [default to nothing]
**optimizers_config** | [***QdrantOptimizersConfigDiff**](QdrantOptimizersConfigDiff.md) |  | [optional] [default to nothing]
**init_from** | [***QdrantInitFrom**](QdrantInitFrom.md) |  | [optional] [default to nothing]
**quantization_config** | [***QdrantQuantizationConfig**](QdrantQuantizationConfig.md) |  | [optional] [default to nothing]
**sparse_vectors** | [**Dict{String, QdrantSparseVectorParams}**](QdrantSparseVectorParams.md) | Sparse vector data config. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


