part of openapi.api;



class DefaultApi {
  final ApiClient apiClient;

  DefaultApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add a plague body temp measurement with HTTP info returned
  ///
  /// 
  Future<Response> createBodyTempMeasurementWithHttpInfo(TempMeasurement tempMeasurement) async {
    Object postBody = tempMeasurement;

    // verify required params are set
    if(tempMeasurement == null) {
     throw ApiException(400, "Missing required param: tempMeasurement");
    }

    // create path and map variables
    String path = "/measurement/bodytemp".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Add a plague body temp measurement
  ///
  /// 
  Future<TempMeasurement> createBodyTempMeasurement(TempMeasurement tempMeasurement) async {
    Response response = await createBodyTempMeasurementWithHttpInfo(tempMeasurement);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'TempMeasurement') as TempMeasurement;
    } else {
      return null;
    }
  }

  /// Add a health dataset with HTTP info returned
  ///
  /// 
  Future<Response> createDataSetWithHttpInfo(HealthDataSet healthDataSet) async {
    Object postBody = healthDataSet;

    // verify required params are set
    if(healthDataSet == null) {
     throw ApiException(400, "Missing required param: healthDataSet");
    }

    // create path and map variables
    String path = "/healthDataSet".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Add a health dataset
  ///
  /// 
  Future<HealthDataSet> createDataSet(HealthDataSet healthDataSet) async {
    Response response = await createDataSetWithHttpInfo(healthDataSet);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'HealthDataSet') as HealthDataSet;
    } else {
      return null;
    }
  }

  /// Create a Geofence with HTTP info returned
  ///
  /// 
  Future<Response> createGeofenceWithHttpInfo(Geofence geofence) async {
    Object postBody = geofence;

    // verify required params are set
    if(geofence == null) {
     throw ApiException(400, "Missing required param: geofence");
    }

    // create path and map variables
    String path = "/geofences".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Create a Geofence
  ///
  /// 
  Future<Geofence> createGeofence(Geofence geofence) async {
    Response response = await createGeofenceWithHttpInfo(geofence);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Geofence') as Geofence;
    } else {
      return null;
    }
  }

  /// Create new location entry with HTTP info returned
  ///
  /// 
  Future<Response> createPositionWithHttpInfo(Position position, { String userId }) async {
    Object postBody = position;

    // verify required params are set
    if(position == null) {
     throw ApiException(400, "Missing required param: position");
    }

    // create path and map variables
    String path = "/positions".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(userId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "userId", userId));
    }

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Create new location entry
  ///
  /// 
  Future<Position> createPosition(Position position, { String userId }) async {
    Response response = await createPositionWithHttpInfo(position,  userId: userId );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Position') as Position;
    } else {
      return null;
    }
  }

  /// Create a User with HTTP info returned
  ///
  /// 
  Future<Response> createUserWithHttpInfo(User body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/users".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Create a User
  ///
  /// 
  Future<User> createUser(User body) async {
    Response response = await createUserWithHttpInfo(body);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'User') as User;
    } else {
      return null;
    }
  }

  /// Delete a User TODO move to /users/id with HTTP info returned
  ///
  /// 
  Future deleteUserWithHttpInfo(String id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/users".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Delete a User TODO move to /users/id
  ///
  /// 
  Future deleteUser(String id) async {
    Response response = await deleteUserWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Fetch a list of body temp measurements with HTTP info returned
  ///
  /// 
  Future<Response> getBodyTempMeasurementsWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/measurement/bodytemp".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Fetch a list of body temp measurements
  ///
  /// 
  Future<List<TempMeasurement>> getBodyTempMeasurements() async {
    Response response = await getBodyTempMeasurementsWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<TempMeasurement>') as List).map((item) => item as TempMeasurement).toList();
    } else {
      return null;
    }
  }

  /// Get users friends with HTTP info returned
  ///
  /// 
  Future<Response> getFriendsWithHttpInfo(String id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/users/{id}/friends".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Get users friends
  ///
  /// 
  Future<List<Friend>> getFriends(String id) async {
    Response response = await getFriendsWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Friend>') as List).map((item) => item as Friend).toList();
    } else {
      return null;
    }
  }

  /// Fetch a list of Geofences with HTTP info returned
  ///
  /// Without params, it returns a list of Geofences the user has access to
  Future<Response> getGeofencesWithHttpInfo({ bool all, String userId, bool refresh }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/geofences".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(all != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "all", all));
    }
    if(userId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "userId", userId));
    }
    if(refresh != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "refresh", refresh));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Fetch a list of Geofences
  ///
  /// Without params, it returns a list of Geofences the user has access to
  Future<List<Geofence>> getGeofences({ bool all, String userId, bool refresh }) async {
    Response response = await getGeofencesWithHttpInfo( all: all, userId: userId, refresh: refresh );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Geofence>') as List).map((item) => item as Geofence).toList();
    } else {
      return null;
    }
  }

  /// Fetch a list of  within the time period for the Device with HTTP info returned
  ///
  /// At least one userId must be passed
  Future<Response> getLocationsWithHttpInfo(DateTime from, DateTime to, { List<String> deviceId }) async {
    Object postBody;

    // verify required params are set
    if(from == null) {
     throw ApiException(400, "Missing required param: from");
    }
    if(to == null) {
     throw ApiException(400, "Missing required param: to");
    }

    // create path and map variables
    String path = "/reports/locations".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(deviceId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "deviceId", deviceId));
    }
      queryParams.addAll(_convertParametersForCollectionFormat("", "from", from));
      queryParams.addAll(_convertParametersForCollectionFormat("", "to", to));

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Fetch a list of  within the time period for the Device
  ///
  /// At least one userId must be passed
  Future<List<ReportTrips>> getLocations(DateTime from, DateTime to, { List<String> deviceId }) async {
    Response response = await getLocationsWithHttpInfo(from, to,  deviceId: deviceId );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<ReportTrips>') as List).map((item) => item as ReportTrips).toList();
    } else {
      return null;
    }
  }

  /// Fetches a list of Positions with HTTP info returned
  ///
  /// Without any params, it returns a list of last known positions for all the user&#39;s Devices. _from_ and _to_ fields are not required with _id_
  Future<Response> getPositionsWithHttpInfo({ String userId, DateTime from, DateTime to, String id }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/positions".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(userId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "userId", userId));
    }
    if(from != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "from", from));
    }
    if(to != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "to", to));
    }
    if(id != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "id", id));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Fetches a list of Positions
  ///
  /// Without any params, it returns a list of last known positions for all the user&#39;s Devices. _from_ and _to_ fields are not required with _id_
  Future<List<Position>> getPositions({ String userId, DateTime from, DateTime to, String id }) async {
    Response response = await getPositionsWithHttpInfo( userId: userId, from: from, to: to, id: id );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Position>') as List).map((item) => item as Position).toList();
    } else {
      return null;
    }
  }

  /// Get a single users with HTTP info returned
  ///
  /// 
  Future<Response> getUserWithHttpInfo(String id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/users/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Get a single users
  ///
  /// 
  Future<User> getUser(String id) async {
    Response response = await getUserWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'User') as User;
    } else {
      return null;
    }
  }

  /// Fetch a list of Users with HTTP info returned
  ///
  /// 
  Future<Response> getUsersWithHttpInfo({ String userId }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/users".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(userId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "userId", userId));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Fetch a list of Users
  ///
  /// 
  Future<List<User>> getUsers({ String userId }) async {
    Response response = await getUsersWithHttpInfo( userId: userId );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<User>') as List).map((item) => item as User).toList();
    } else {
      return null;
    }
  }

  /// Delete a Geofence with HTTP info returned
  ///
  /// 
  Future removeGeofenceWithHttpInfo(String id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/geofences/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Delete a Geofence
  ///
  /// 
  Future removeGeofence(String id) async {
    Response response = await removeGeofenceWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Update a Geofence with HTTP info returned
  ///
  /// 
  Future<Response> updateGeofenceWithHttpInfo(String id, Geofence body) async {
    Object postBody = body;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }
    if(body == null) {
     throw ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/geofences/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Update a Geofence
  ///
  /// 
  Future<Geofence> updateGeofence(String id, Geofence body) async {
    Response response = await updateGeofenceWithHttpInfo(id, body);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Geofence') as Geofence;
    } else {
      return null;
    }
  }

  /// Upload users friends with HTTP info returned
  ///
  /// 
  Future uploadFriendsWithHttpInfo(String id, List<Friend> friend) async {
    Object postBody = friend;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }
    if(friend == null) {
     throw ApiException(400, "Missing required param: friend");
    }

    // create path and map variables
    String path = "/users/{id}/friends".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Upload users friends
  ///
  /// 
  Future uploadFriends(String id, List<Friend> friend) async {
    Response response = await uploadFriendsWithHttpInfo(id, friend);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

}
