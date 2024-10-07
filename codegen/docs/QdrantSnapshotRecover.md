# QdrantSnapshotRecover


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**location** | **String** | Examples: - URL &#x60;http://localhost:8080/collections/my_collection/snapshots/my_snapshot&#x60; - Local path &#x60;file:///qdrant/snapshots/test_collection-2022-08-04-10-49-10.snapshot&#x60; | [default to nothing]
**priority** | [***QdrantSnapshotPriority**](QdrantSnapshotPriority.md) |  | [optional] [default to nothing]
**checksum** | **String** | Optional SHA256 checksum to verify snapshot integrity before recovery. | [optional] [default to nothing]
**api_key** | **String** | Optional API key used when fetching the snapshot from a remote URL. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


