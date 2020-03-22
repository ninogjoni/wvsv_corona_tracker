import 'package:openapi/api.dart';
import 'package:test/test.dart';

// tests for TempMeasurement
void main() {
    var instance = new TempMeasurement();

  group('test TempMeasurement', () {
    // in IS0 8601 format. eg. `1963-11-22T18:30:00Z`
    // DateTime time (default value: null)
    test('to test the property `time`', () async {
      // TODO
    });

    // String userId (default value: null)
    test('to test the property `userId`', () async {
      // TODO
    });

    // temp value, caution: is multiplied *100. E.g. 38.02°C gets 3802 here!
    // int value (default value: null)
    test('to test the property `value`', () async {
      // TODO
    });


  });

}
