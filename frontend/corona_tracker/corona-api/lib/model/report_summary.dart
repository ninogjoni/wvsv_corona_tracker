part of openapi.api;

class ReportSummary {
  
  String deviceName = null;
  /* in knots */
  num maxSpeed = null;
  /* in knots */
  num averageSpeed = null;
  /* in meters */
  num distance = null;
  /* in liters */
  num spentFuel = null;
  
  int engineHours = null;
  ReportSummary();

  @override
  String toString() {
    return 'ReportSummary[deviceName=$deviceName, maxSpeed=$maxSpeed, averageSpeed=$averageSpeed, distance=$distance, spentFuel=$spentFuel, engineHours=$engineHours, ]';
  }

  ReportSummary.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    deviceName = json['deviceName'];
    maxSpeed = json['maxSpeed'];
    averageSpeed = json['averageSpeed'];
    distance = json['distance'];
    spentFuel = json['spentFuel'];
    engineHours = json['engineHours'];
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
    if (engineHours != null)
      json['engineHours'] = engineHours;
    return json;
  }

  static List<ReportSummary> listFromJson(List<dynamic> json) {
    return json == null ? List<ReportSummary>() : json.map((value) => ReportSummary.fromJson(value)).toList();
  }

  static Map<String, ReportSummary> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReportSummary>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReportSummary.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ReportSummary-objects as value to a dart map
  static Map<String, List<ReportSummary>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ReportSummary>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ReportSummary.listFromJson(value);
       });
     }
     return map;
  }
}

