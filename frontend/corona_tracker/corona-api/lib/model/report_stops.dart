part of openapi.api;

class ReportStops {
  
  String deviceName = null;
  
  int duration = null;
  /* in IS0 8601 format. eg. `1963-11-22T18:30:00Z` */
  DateTime startTime = null;
  
  String address = null;
  
  num lat = null;
  
  num lon = null;
  /* in IS0 8601 format. eg. `1963-11-22T18:30:00Z` */
  DateTime endTime = null;
  /* in liters */
  num spentFuel = null;
  
  int engineHours = null;
  ReportStops();

  @override
  String toString() {
    return 'ReportStops[deviceName=$deviceName, duration=$duration, startTime=$startTime, address=$address, lat=$lat, lon=$lon, endTime=$endTime, spentFuel=$spentFuel, engineHours=$engineHours, ]';
  }

  ReportStops.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    deviceName = json['deviceName'];
    duration = json['duration'];
    startTime = (json['startTime'] == null) ?
      null :
      DateTime.parse(json['startTime']);
    address = json['address'];
    lat = json['lat'];
    lon = json['lon'];
    endTime = (json['endTime'] == null) ?
      null :
      DateTime.parse(json['endTime']);
    spentFuel = json['spentFuel'];
    engineHours = json['engineHours'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (deviceName != null)
      json['deviceName'] = deviceName;
    if (duration != null)
      json['duration'] = duration;
    if (startTime != null)
      json['startTime'] = startTime == null ? null : startTime.toUtc().toIso8601String();
    if (address != null)
      json['address'] = address;
    if (lat != null)
      json['lat'] = lat;
    if (lon != null)
      json['lon'] = lon;
    if (endTime != null)
      json['endTime'] = endTime == null ? null : endTime.toUtc().toIso8601String();
    if (spentFuel != null)
      json['spentFuel'] = spentFuel;
    if (engineHours != null)
      json['engineHours'] = engineHours;
    return json;
  }

  static List<ReportStops> listFromJson(List<dynamic> json) {
    return json == null ? List<ReportStops>() : json.map((value) => ReportStops.fromJson(value)).toList();
  }

  static Map<String, ReportStops> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReportStops>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReportStops.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ReportStops-objects as value to a dart map
  static Map<String, List<ReportStops>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ReportStops>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ReportStops.listFromJson(value);
       });
     }
     return map;
  }
}

