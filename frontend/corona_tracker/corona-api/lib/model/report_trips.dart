part of openapi.api;

class ReportTrips {
  
  String deviceName = null;
  /* in knots */
  num maxSpeed = null;
  /* in knots */
  num averageSpeed = null;
  /* in meters */
  num distance = null;
  /* in liters */
  num spentFuel = null;
  
  int duration = null;
  /* in IS0 8601 format. eg. `1963-11-22T18:30:00Z` */
  DateTime startTime = null;
  
  String startAddress = null;
  
  num startLat = null;
  
  num startLon = null;
  /* in IS0 8601 format. eg. `1963-11-22T18:30:00Z` */
  DateTime endTime = null;
  
  String endAddress = null;
  
  num endLat = null;
  
  num endLon = null;
  ReportTrips();

  @override
  String toString() {
    return 'ReportTrips[deviceName=$deviceName, maxSpeed=$maxSpeed, averageSpeed=$averageSpeed, distance=$distance, spentFuel=$spentFuel, duration=$duration, startTime=$startTime, startAddress=$startAddress, startLat=$startLat, startLon=$startLon, endTime=$endTime, endAddress=$endAddress, endLat=$endLat, endLon=$endLon, ]';
  }

  ReportTrips.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    deviceName = json['deviceName'];
    maxSpeed = json['maxSpeed'];
    averageSpeed = json['averageSpeed'];
    distance = json['distance'];
    spentFuel = json['spentFuel'];
    duration = json['duration'];
    startTime = (json['startTime'] == null) ?
      null :
      DateTime.parse(json['startTime']);
    startAddress = json['startAddress'];
    startLat = json['startLat'];
    startLon = json['startLon'];
    endTime = (json['endTime'] == null) ?
      null :
      DateTime.parse(json['endTime']);
    endAddress = json['endAddress'];
    endLat = json['endLat'];
    endLon = json['endLon'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (deviceName != null)
      json['deviceName'] = deviceName;
    if (maxSpeed != null)
      json['maxSpeed'] = maxSpeed;
    if (averageSpeed != null)
      json['averageSpeed'] = averageSpeed;
    if (distance != null)
      json['distance'] = distance;
    if (spentFuel != null)
      json['spentFuel'] = spentFuel;
    if (duration != null)
      json['duration'] = duration;
    if (startTime != null)
      json['startTime'] = startTime == null ? null : startTime.toUtc().toIso8601String();
    if (startAddress != null)
      json['startAddress'] = startAddress;
    if (startLat != null)
      json['startLat'] = startLat;
    if (startLon != null)
      json['startLon'] = startLon;
    if (endTime != null)
      json['endTime'] = endTime == null ? null : endTime.toUtc().toIso8601String();
    if (endAddress != null)
      json['endAddress'] = endAddress;
    if (endLat != null)
      json['endLat'] = endLat;
    if (endLon != null)
      json['endLon'] = endLon;
    return json;
  }

  static List<ReportTrips> listFromJson(List<dynamic> json) {
    return json == null ? List<ReportTrips>() : json.map((value) => ReportTrips.fromJson(value)).toList();
  }

  static Map<String, ReportTrips> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReportTrips>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReportTrips.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ReportTrips-objects as value to a dart map
  static Map<String, List<ReportTrips>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ReportTrips>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ReportTrips.listFromJson(value);
       });
     }
     return map;
  }
}

