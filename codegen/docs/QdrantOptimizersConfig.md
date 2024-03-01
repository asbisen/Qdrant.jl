# QdrantOptimizersConfig


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deleted_threshold** | **Float64** | The minimal fraction of deleted vectors in a segment, required to perform segment optimization | [default to nothing]
**vacuum_min_vector_number** | **Int64** | The minimal number of vectors in a segment, required to perform segment optimization | [default to nothing]
**default_segment_number** | **Int64** | Target amount of segments optimizer will try to keep. Real amount of segments may vary depending on multiple parameters: - Amount of stored points - Current write RPS  It is recommended to select default number of segments as a factor of the number of search threads, so that each segment would be handled evenly by one of the threads. If &#x60;default_segment_number &#x3D; 0&#x60;, will be automatically selected by the number of available CPUs. | [default to nothing]
**max_segment_size** | **Int64** | Do not create segments larger this size (in kilobytes). Large segments might require disproportionately long indexation times, therefore it makes sense to limit the size of segments.  If indexing speed is more important - make this parameter lower. If search speed is more important - make this parameter higher. Note: 1Kb &#x3D; 1 vector of size 256 If not set, will be automatically selected considering the number of available CPUs. | [optional] [default to nothing]
**memmap_threshold** | **Int64** | Maximum size (in kilobytes) of vectors to store in-memory per segment. Segments larger than this threshold will be stored as read-only memmaped file.  Memmap storage is disabled by default, to enable it, set this threshold to a reasonable value.  To disable memmap storage, set this to &#x60;0&#x60;. Internally it will use the largest threshold possible.  Note: 1Kb &#x3D; 1 vector of size 256 | [optional] [default to nothing]
**indexing_threshold** | **Int64** | Maximum size (in kilobytes) of vectors allowed for plain index, exceeding this threshold will enable vector indexing  Default value is 20,000, based on &lt;https://github.com/google-research/google-research/blob/master/scann/docs/algorithms.md&gt;.  To disable vector indexing, set to &#x60;0&#x60;.  Note: 1kB &#x3D; 1 vector of size 256. | [optional] [default to nothing]
**flush_interval_sec** | **Int64** | Minimum interval between forced flushes. | [default to nothing]
**max_optimization_threads** | **Int64** | Maximum available threads for optimization workers | [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


