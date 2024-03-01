# QdrantRaftInfo


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**term** | **Int64** | Raft divides time into terms of arbitrary length, each beginning with an election. If a candidate wins the election, it remains the leader for the rest of the term. The term number increases monotonically. Each server stores the current term number which is also exchanged in every communication. | [default to nothing]
**commit** | **Int64** | The index of the latest committed (finalized) operation that this peer is aware of. | [default to nothing]
**pending_operations** | **Int64** | Number of consensus operations pending to be applied on this peer | [default to nothing]
**leader** | **Int64** | Leader of the current term | [optional] [default to nothing]
**role** | [***QdrantStateRole**](QdrantStateRole.md) |  | [optional] [default to nothing]
**is_voter** | **Bool** | Is this peer a voter or a learner | [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


