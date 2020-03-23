part of openapi.api;

class TempMeasurement {
  /* in IS0 8601 format. eg. `1963-11-22T18:30:00Z` */
  DateTime time = null;
  
  String userId = null;
  /* temp value, caution: is multiplied *100. E.g. 38.02°C gets 3802 here! */
  int value = null;
  TempMeasurement();

  @override
  String toString() {
    return 'TempMeasurement[time=$time, userId=$userId, value=$value, ]';
  }

  TempMeasurement.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    time = (json['time'] == null) ?
      null :
      DateTime.parse(json['time']);
    userId = json['userId'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (time != null)
      json['time'] = time == null ? null : time.toUtc().toIso8601String();
    if (userId != null)
      json['userId'] = userId;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<TempMeasurement> listFromJson(List<dynamic> json) {
    return json == null ? List<TempMeasurement>() : json.map((value) => TempMeasurement.fromJson(value)).toList();
  }

  static Map<String, TempMeasurement> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TempMeasurement>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TempMeasurement.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TempMeasurement-objects as value to a dart map
  static Map<String, List<TempMeasurement>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TempMeasurement>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TempMeasurement.listFromJson(value);
       });
     }
     return map;
  }
}

