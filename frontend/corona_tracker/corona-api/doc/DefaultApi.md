# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addFriend**](DefaultApi.md#addFriend) | **POST** /users/{id}/friends | Add users friends
[**createBodyTempMeasurement**](DefaultApi.md#createBodyTempMeasurement) | **POST** /measurement/bodytemp | Add a plague body temp measurement
[**createDataSet**](DefaultApi.md#createDataSet) | **POST** /healthDataSet | Add a health dataset
[**createPosition**](DefaultApi.md#createPosition) | **POST** /positions | Create new location entry
[**createUser**](DefaultApi.md#createUser) | **POST** /users | Create a User
[**deleteUser**](DefaultApi.md#deleteUser) | **DELETE** /users/{id} | Delete a User TODO move to /users/id
[**getBodyTempMeasurements**](DefaultApi.md#getBodyTempMeasurements) | **GET** /measurement/bodytemp | Fetch a list of body temp measurements
[**getFriends**](DefaultApi.md#getFriends) | **GET** /users/{id}/friends | Get users friends
[**getLocations**](DefaultApi.md#getLocations) | **GET** /reports/locations | Fetch a list of  within the time period for the Device
[**getPositions**](DefaultApi.md#getPositions) | **GET** /positions | Fetches a list of Positions
[**getUser**](DefaultApi.md#getUser) | **GET** /users/{id} | Get a single users
[**getUsers**](DefaultApi.md#getUsers) | **GET** /users | Fetch a list of Users
[**uploadFriends**](DefaultApi.md#uploadFriends) | **PUT** /users/{id}/friends | Upload users friends


# **addFriend**
> addFriend(id, friend)

Add users friends

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = DefaultApi();
var id = id_example; // String | 
var friend = Friend(); // Friend | 

try { 
    api_instance.addFriend(id, friend);
} catch (e) {
    print("Exception when calling DefaultApi->addFriend: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [default to null]
 **friend** | [**Friend**](Friend.md)|  | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createBodyTempMeasurement**
> TempMeasurement createBodyTempMeasurement(tempMeasurement)

Add a plague body temp measurement

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = DefaultApi();
var tempMeasurement = TempMeasurement(); // TempMeasurement | 

try { 
    var result = api_instance.createBodyTempMeasurement(tempMeasurement);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->createBodyTempMeasurement: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tempMeasurement** | [**TempMeasurement**](TempMeasurement.md)|  | 

### Return type

[**TempMeasurement**](TempMeasurement.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createDataSet**
> HealthDataSet createDataSet(healthDataSet)

Add a health dataset

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = DefaultApi();
var healthDataSet = HealthDataSet(); // HealthDataSet | 

try { 
    var result = api_instance.createDataSet(healthDataSet);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->createDataSet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **healthDataSet** | [**HealthDataSet**](HealthDataSet.md)|  | 

### Return type

[**HealthDataSet**](HealthDataSet.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPosition**
> Position createPosition(position, userId)

Create new location entry

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = DefaultApi();
var position = Position(); // Position | 
var userId = userId_example; // String | 

try { 
    var result = api_instance.createPosition(position, userId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->createPosition: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **position** | [**Position**](Position.md)|  | 
 **userId** | **String**|  | [optional] [default to null]

### Return type

[**Position**](Position.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, text/csv, application/gpx+xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUser**
> User createUser(user)

Create a User

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = DefaultApi();
var user = User(); // User | 

try { 
    var result = api_instance.createUser(user);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->createUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**User**](User.md)|  | 

### Return type

[**User**](User.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUser**
> deleteUser(id)

Delete a User TODO move to /users/id

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = DefaultApi();
var id = id_example; // String | 

try { 
    api_instance.deleteUser(id);
} catch (e) {
    print("Exception when calling DefaultApi->deleteUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [default to null]

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBodyTempMeasurements**
> List<TempMeasurement> getBodyTempMeasurements()

Fetch a list of body temp measurements

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = DefaultApi();

try { 
    var result = api_instance.getBodyTempMeasurements();
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getBodyTempMeasurements: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<TempMeasurement>**](TempMeasurement.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFriends**
> List<Friend> getFriends(id)

Get users friends

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = DefaultApi();
var id = id_example; // String | 

try { 
    var result = api_instance.getFriends(id);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getFriends: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [default to null]

### Return type

[**List<Friend>**](Friend.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLocations**
> List<ReportTrips> getLocations(from, to, deviceId)

Fetch a list of  within the time period for the Device

At least one userId must be passed

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = DefaultApi();
var from = 2013-10-20T19:20:30+01:00; // DateTime | in IS0 8601 format. eg. `1963-11-22T18:30:00Z`
var to = 2013-10-20T19:20:30+01:00; // DateTime | in IS0 8601 format. eg. `1963-11-22T18:30:00Z`
var deviceId = []; // List<String> | 

try { 
    var result = api_instance.getLocations(from, to, deviceId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getLocations: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **DateTime**| in IS0 8601 format. eg. &#x60;1963-11-22T18:30:00Z&#x60; | [default to null]
 **to** | **DateTime**| in IS0 8601 format. eg. &#x60;1963-11-22T18:30:00Z&#x60; | [default to null]
 **deviceId** | [**List&lt;String&gt;**](String.md)|  | [optional] [default to []]

### Return type

[**List<ReportTrips>**](ReportTrips.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPositions**
> List<Position> getPositions(userId, from, to, id)

Fetches a list of Positions

Without any params, it returns a list of last known positions for all the user's Devices. _from_ and _to_ fields are not required with _id_

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = DefaultApi();
var userId = userId_example; // String | 
var from = 2013-10-20T19:20:30+01:00; // DateTime | in IS0 8601 format. eg. `1963-11-22T18:30:00Z`
var to = 2013-10-20T19:20:30+01:00; // DateTime | in IS0 8601 format. eg. `1963-11-22T18:30:00Z`
var id = id_example; // String | To fetch one or more positions. Multiple params can be passed like `id=31&id=42`

try { 
    var result = api_instance.getPositions(userId, from, to, id);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getPositions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | [optional] [default to null]
 **from** | **DateTime**| in IS0 8601 format. eg. &#x60;1963-11-22T18:30:00Z&#x60; | [optional] [default to null]
 **to** | **DateTime**| in IS0 8601 format. eg. &#x60;1963-11-22T18:30:00Z&#x60; | [optional] [default to null]
 **id** | **String**| To fetch one or more positions. Multiple params can be passed like &#x60;id&#x3D;31&amp;id&#x3D;42&#x60; | [optional] [default to null]

### Return type

[**List<Position>**](Position.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv, application/gpx+xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUser**
> User getUser(id)

Get a single users

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = DefaultApi();
var id = id_example; // String | 

try { 
    var result = api_instance.getUser(id);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [default to null]

### Return type

[**User**](User.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsers**
> List<User> getUsers(userId)

Fetch a list of Users

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = DefaultApi();
var userId = userId_example; // String | 

try { 
    var result = api_instance.getUsers(userId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getUsers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | [optional] [default to null]

### Return type

[**List<User>**](User.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadFriends**
> uploadFriends(id, friend)

Upload users friends

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = DefaultApi();
var id = id_example; // String | 
var friend = [List&lt;Friend&gt;()]; // List<Friend> | 

try { 
    api_instance.uploadFriends(id, friend);
} catch (e) {
    print("Exception when calling DefaultApi->uploadFriends: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [default to null]
 **friend** | [**List&lt;Friend&gt;**](Friend.md)|  | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

