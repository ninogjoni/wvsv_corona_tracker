import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for DefaultApi
void main() {
  var instance = DefaultApi();

  group('tests for DefaultApi', () {
    // Add users friends
    //
    //Future addFriend(String id, Friend friend) async 
    test('test addFriend', () async {
      // TODO
    });

    // Add a plague body temp measurement
    //
    //Future<TempMeasurement> createBodyTempMeasurement(TempMeasurement tempMeasurement) async 
    test('test createBodyTempMeasurement', () async {
      // TODO
    });

    // Add a health dataset
    //
    //Future<HealthDataSet> createDataSet(HealthDataSet healthDataSet) async 
    test('test createDataSet', () async {
      // TODO
    });

    // Create new location entry
    //
    //Future<Position> createPosition(Position position, { String userId }) async 
    test('test createPosition', () async {
      // TODO
    });

    // Create a User
    //
    //Future<User> createUser(User user) async 
    test('test createUser', () async {
      // TODO
    });

    // Delete a User TODO move to /users/id
    //
    //Future deleteUser(String id) async 
    test('test deleteUser', () async {
      // TODO
    });

    // Fetch a list of body temp measurements
    //
    //Future<List<TempMeasurement>> getBodyTempMeasurements() async 
    test('test getBodyTempMeasurements', () async {
      // TODO
    });

    // Get users friends
    //
    //Future<List<Friend>> getFriends(String id) async 
    test('test getFriends', () async {
      // TODO
    });

    // Fetch a list of  within the time period for the Device
    //
    // At least one userId must be passed
    //
    //Future<List<ReportTrips>> getLocations(DateTime from, DateTime to, { List<String> deviceId }) async 
    test('test getLocations', () async {
      // TODO
    });

    // Fetches a list of Positions
    //
    // Without any params, it returns a list of last known positions for all the user's Devices. _from_ and _to_ fields are not required with _id_
    //
    //Future<List<Position>> getPositions({ String userId, DateTime from, DateTime to, String id }) async 
    test('test getPositions', () async {
      // TODO
    });

    // Get a single users
    //
    //Future<User> getUser(String id) async 
    test('test getUser', () async {
      // TODO
    });

    // Fetch a list of Users
    //
    //Future<List<User>> getUsers({ String userId }) async 
    test('test getUsers', () async {
      // TODO
    });

    // Upload users friends
    //
    //Future uploadFriends(String id, List<Friend> friend) async 
    test('test uploadFriends', () async {
      // TODO
    });

  });
}
