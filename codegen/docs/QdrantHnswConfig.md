# QdrantHnswConfig


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**m** | **Int64** | Number of edges per node in the index graph. Larger the value - more accurate the search, more space required. | [default to nothing]
**ef_construct** | **Int64** | Number of neighbours to consider during the index building. Larger the value - more accurate the search, more time required to build index. | [default to nothing]
**full_scan_threshold** | **Int64** | Minimal size (in KiloBytes) of vectors for additional payload-based indexing. If payload chunk is smaller than &#x60;full_scan_threshold_kb&#x60; additional indexing won&#39;t be used - in this case full-scan search should be preferred by query planner and additional indexing is not required. Note: 1Kb &#x3D; 1 vector of size 256 | [default to nothing]
**max_indexing_threads** | **Int64** | Number of parallel threads used for background index building. If 0 - auto selection. | [optional] [default to 0]
**on_disk** | **Bool** | Store HNSW index on disk. If set to false, index will be stored in RAM. Default: false | [optional] [default to nothing]
**payload_m** | **Int64** | Custom M param for hnsw graph built for payload index. If not set, default M will be used. | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


