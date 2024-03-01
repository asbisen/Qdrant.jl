# QdrantCreateShardingKey


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**shard_key** | [***QdrantShardKey**](QdrantShardKey.md) |  | [default to nothing]
**shards_number** | **Int64** | How many shards to create for this key If not specified, will use the default value from config | [optional] [default to nothing]
**replication_factor** | **Int64** | How many replicas to create for each shard If not specified, will use the default value from config | [optional] [default to nothing]
**placement** | **Vector{Int64}** | Placement of shards for this key List of peer ids, that can be used to place shards for this key If not specified, will be randomly placed among all peers | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


