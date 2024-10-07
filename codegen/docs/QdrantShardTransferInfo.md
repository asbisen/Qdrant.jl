# QdrantShardTransferInfo


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**shard_id** | **Int64** |  | [default to nothing]
**from** | **Int64** | Source peer id | [default to nothing]
**to** | **Int64** | Destination peer id | [default to nothing]
**sync** | **Bool** | If &#x60;true&#x60; transfer is a synchronization of a replicas If &#x60;false&#x60; transfer is a moving of a shard from one peer to another | [default to nothing]
**method** | [***QdrantShardTransferMethod**](QdrantShardTransferMethod.md) |  | [optional] [default to nothing]
**comment** | **String** | A human-readable report of the transfer progress. Available only on the source peer. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


