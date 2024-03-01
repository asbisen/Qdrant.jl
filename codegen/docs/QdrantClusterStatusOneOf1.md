# QdrantClusterStatusOneOf1


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** |  | [default to nothing]
**peer_id** | **Int64** | ID of this peer | [default to nothing]
**peers** | [**Dict{String, QdrantPeerInfo}**](QdrantPeerInfo.md) | Peers composition of the cluster with main information | [default to nothing]
**raft_info** | [***QdrantRaftInfo**](QdrantRaftInfo.md) |  | [default to nothing]
**consensus_thread_status** | [***QdrantConsensusThreadStatus**](QdrantConsensusThreadStatus.md) |  | [default to nothing]
**message_send_failures** | [**Dict{String, QdrantMessageSendErrors}**](QdrantMessageSendErrors.md) | Consequent failures of message send operations in consensus by peer address. On the first success to send to that peer - entry is removed from this hashmap. | [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


