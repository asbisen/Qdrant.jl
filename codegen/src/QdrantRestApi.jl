# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

module QdrantRestApi

using Dates, TimeZones
using OpenAPI
using OpenAPI.Clients

const API_VERSION = "v1.7.x"

include("modelincludes.jl")

include("apis/api_ClusterApi.jl")
include("apis/api_CollectionsApi.jl")
include("apis/api_PointsApi.jl")
include("apis/api_ServiceApi.jl")
include("apis/api_SnapshotsApi.jl")

# export models
export QdrantAbortTransferOperation
export QdrantAliasDescription
export QdrantAliasOperations
export QdrantAnyVariants
export QdrantAppBuildTelemetry
export QdrantAppFeaturesTelemetry
export QdrantBatch
export QdrantBatchPayloadsInner
export QdrantBatchUpdate200Response
export QdrantBatchVectorStruct
export QdrantBinaryQuantization
export QdrantBinaryQuantizationConfig
export QdrantChangeAliasesOperation
export QdrantClearPayloadOperation
export QdrantClusterConfigTelemetry
export QdrantClusterOperations
export QdrantClusterStatus
export QdrantClusterStatus200Response
export QdrantClusterStatusOneOf
export QdrantClusterStatusOneOf1
export QdrantClusterStatusTelemetry
export QdrantClusterTelemetry
export QdrantCollectionClusterInfo
export QdrantCollectionClusterInfo200Response
export QdrantCollectionConfig
export QdrantCollectionDescription
export QdrantCollectionInfo
export QdrantCollectionParams
export QdrantCollectionParamsDiff
export QdrantCollectionStatus
export QdrantCollectionTelemetry
export QdrantCollectionTelemetryEnum
export QdrantCollectionsAggregatedTelemetry
export QdrantCollectionsAliasesResponse
export QdrantCollectionsResponse
export QdrantCollectionsTelemetry
export QdrantCompressionRatio
export QdrantCondition
export QdrantConsensusConfigTelemetry
export QdrantConsensusThreadStatus
export QdrantConsensusThreadStatusOneOf
export QdrantConsensusThreadStatusOneOf1
export QdrantConsensusThreadStatusOneOf2
export QdrantContextExamplePair
export QdrantCountPoints200Response
export QdrantCountRequest
export QdrantCountResult
export QdrantCreateAlias
export QdrantCreateAliasOperation
export QdrantCreateCollection
export QdrantCreateFieldIndex
export QdrantCreateFieldIndex200Response
export QdrantCreateShardKey200Response
export QdrantCreateShardingKey
export QdrantCreateShardingKeyOperation
export QdrantCreateSnapshot200Response
export QdrantDeleteAlias
export QdrantDeleteAliasOperation
export QdrantDeleteOperation
export QdrantDeletePayload
export QdrantDeletePayloadOperation
export QdrantDeleteVectors
export QdrantDeleteVectorsOperation
export QdrantDisabled
export QdrantDiscoverRequest
export QdrantDiscoverRequestBatch
export QdrantDistance
export QdrantDropReplicaOperation
export QdrantDropShardingKey
export QdrantDropShardingKeyOperation
export QdrantErrorResponse
export QdrantErrorResponseStatus
export QdrantExtendedPointId
export QdrantFieldCondition
export QdrantFilter
export QdrantFilterSelector
export QdrantGeoBoundingBox
export QdrantGeoLineString
export QdrantGeoPoint
export QdrantGeoPolygon
export QdrantGeoRadius
export QdrantGetCollection200Response
export QdrantGetCollectionAliases200Response
export QdrantGetCollections200Response
export QdrantGetLocks200Response
export QdrantGetPoint200Response
export QdrantGetPoints200Response
export QdrantGroupId
export QdrantGroupsResult
export QdrantGrpcTelemetry
export QdrantHasIdCondition
export QdrantHnswConfig
export QdrantHnswConfigDiff
export QdrantIndexes
export QdrantIndexesOneOf
export QdrantIndexesOneOf1
export QdrantInitFrom
export QdrantIsEmptyCondition
export QdrantIsNullCondition
export QdrantListSnapshots200Response
export QdrantLocalShardInfo
export QdrantLocalShardTelemetry
export QdrantLocksOption
export QdrantLookupLocation
export QdrantMatch
export QdrantMatchAny
export QdrantMatchExcept
export QdrantMatchText
export QdrantMatchValue
export QdrantMessageSendErrors
export QdrantMoveShard
export QdrantMoveShardOperation
export QdrantNamedSparseVector
export QdrantNamedVector
export QdrantNamedVectorStruct
export QdrantNested
export QdrantNestedCondition
export QdrantOperationDurationStatistics
export QdrantOptimizerTelemetry
export QdrantOptimizersConfig
export QdrantOptimizersConfigDiff
export QdrantOptimizersStatus
export QdrantOptimizersStatusOneOf
export QdrantOverwritePayloadOperation
export QdrantP2pConfigTelemetry
export QdrantPayloadField
export QdrantPayloadFieldSchema
export QdrantPayloadIndexInfo
export QdrantPayloadIndexTelemetry
export QdrantPayloadSchemaType
export QdrantPayloadSelector
export QdrantPayloadSelectorExclude
export QdrantPayloadSelectorInclude
export QdrantPayloadStorageType
export QdrantPayloadStorageTypeOneOf
export QdrantPayloadStorageTypeOneOf1
export QdrantPeerInfo
export QdrantPointGroup
export QdrantPointIdsList
export QdrantPointInsertOperations
export QdrantPointRequest
export QdrantPointStruct
export QdrantPointVectors
export QdrantPointsBatch
export QdrantPointsList
export QdrantPointsSelector
export QdrantProductQuantization
export QdrantProductQuantizationConfig
export QdrantQuantizationConfig
export QdrantQuantizationConfigDiff
export QdrantQuantizationSearchParams
export QdrantRaftInfo
export QdrantRange
export QdrantReadConsistency
export QdrantReadConsistencyType
export QdrantRecommendExample
export QdrantRecommendGroupsRequest
export QdrantRecommendRequest
export QdrantRecommendRequestBatch
export QdrantRecommendStrategy
export QdrantRecord
export QdrantRecoverFromUploadedSnapshot202Response
export QdrantRemoteShardInfo
export QdrantRemoteShardTelemetry
export QdrantRenameAlias
export QdrantRenameAliasOperation
export QdrantReplica
export QdrantReplicaSetTelemetry
export QdrantReplicaState
export QdrantReplicateShardOperation
export QdrantRequestsTelemetry
export QdrantRunningEnvironmentTelemetry
export QdrantScalarQuantization
export QdrantScalarQuantizationConfig
export QdrantScalarType
export QdrantScoredPoint
export QdrantScrollPoints200Response
export QdrantScrollRequest
export QdrantScrollResult
export QdrantSearchBatchPoints200Response
export QdrantSearchGroupsRequest
export QdrantSearchParams
export QdrantSearchPointGroups200Response
export QdrantSearchPoints200Response
export QdrantSearchRequest
export QdrantSearchRequestBatch
export QdrantSegmentConfig
export QdrantSegmentInfo
export QdrantSegmentTelemetry
export QdrantSegmentType
export QdrantSetPayload
export QdrantSetPayloadOperation
export QdrantShardKey
export QdrantShardKeySelector
export QdrantShardSnapshotLocation
export QdrantShardSnapshotRecover
export QdrantShardTransferInfo
export QdrantShardTransferMethod
export QdrantShardingMethod
export QdrantSnapshotDescription
export QdrantSnapshotPriority
export QdrantSnapshotRecover
export QdrantSparseIndexConfig
export QdrantSparseIndexParams
export QdrantSparseIndexType
export QdrantSparseVector
export QdrantSparseVectorDataConfig
export QdrantSparseVectorParams
export QdrantStateRole
export QdrantTelemetry200Response
export QdrantTelemetryData
export QdrantTextIndexParams
export QdrantTextIndexType
export QdrantTokenizerType
export QdrantTrackerStatus
export QdrantTrackerStatusOneOf
export QdrantTrackerStatusOneOf1
export QdrantTrackerTelemetry
export QdrantUpdateCollection
export QdrantUpdateOperation
export QdrantUpdateOperations
export QdrantUpdateResult
export QdrantUpdateStatus
export QdrantUpdateVectors
export QdrantUpdateVectorsOperation
export QdrantUpsertOperation
export QdrantValueVariants
export QdrantValuesCount
export QdrantVector
export QdrantVectorDataConfig
export QdrantVectorDataInfo
export QdrantVectorIndexSearchesTelemetry
export QdrantVectorParams
export QdrantVectorParamsDiff
export QdrantVectorStorageType
export QdrantVectorStruct
export QdrantVectorsConfig
export QdrantWalConfig
export QdrantWalConfigDiff
export QdrantWebApiTelemetry
export QdrantWithLookup
export QdrantWithLookupInterface
export QdrantWithPayloadInterface
export QdrantWithVector
export QdrantWriteOrdering

# export operations
export ClusterApi
export CollectionsApi
export PointsApi
export ServiceApi
export SnapshotsApi

end # module QdrantRestApi