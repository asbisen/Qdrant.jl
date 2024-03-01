# QdrantHnswConfigDiff


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**m** | **Int64** | Number of edges per node in the index graph. Larger the value - more accurate the search, more space required. | [optional] [default to nothing]
**ef_construct** | **Int64** | Number of neighbours to consider during the index building. Larger the value - more accurate the search, more time required to build the index. | [optional] [default to nothing]
**full_scan_threshold** | **Int64** | Minimal size (in kilobytes) of vectors for additional payload-based indexing. If payload chunk is smaller than &#x60;full_scan_threshold_kb&#x60; additional indexing won&#39;t be used - in this case full-scan search should be preferred by query planner and additional indexing is not required. Note: 1Kb &#x3D; 1 vector of size 256 | [optional] [default to nothing]
**max_indexing_threads** | **Int64** | Number of parallel threads used for background index building. If 0 - auto selection. | [optional] [default to nothing]
**on_disk** | **Bool** | Store HNSW index on disk. If set to false, the index will be stored in RAM. Default: false | [optional] [default to nothing]
**payload_m** | **Int64** | Custom M param for additional payload-aware HNSW links. If not set, default M will be used. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


