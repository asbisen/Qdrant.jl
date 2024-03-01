# QdrantReadConsistency



## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value** | This is a anyOf model. The value must be any of the following types: Int64, QdrantReadConsistencyType | Read consistency parameter  Defines how many replicas should be queried to get the result  * &#x60;N&#x60; - send N random request and return points, which present on all of them  * &#x60;majority&#x60; - send N/2+1 random request and return points, which present on all of them  * &#x60;quorum&#x60; - send requests to all nodes and return points which present on majority of them  * &#x60;all&#x60; - send requests to all nodes and return points which present on all of them  Default value is &#x60;Factor(1)&#x60; | [optional] 





[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


