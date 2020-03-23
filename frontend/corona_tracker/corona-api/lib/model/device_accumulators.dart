part of openapi.api;

class DeviceAccumulators {
  /* in meters */
  num totalDistance = null;
  
  num hours = null;
  DeviceAccumulators();

  @override
  String toString() {
    return 'DeviceAccumulators[totalDistance=$totalDistance, hours=$hours, ]';
  }

  DeviceAccumulators.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalDistance = json['totalDistance'];
    hours = json['hours'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (totalDistance != null)
      json['totalDistance'] = totalDistance;
    if (hours != null)
      json['hours'] = hours;
    return json;
  }

  static List<DeviceAccumulators> listFromJson(List<dynamic> json) {
    return json == null ? List<DeviceAccumulators>() : json.map((value) => DeviceAccumulators.fromJson(value)).toList();
  }

  static Map<String, DeviceAccumulators> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DeviceAccumulators>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DeviceAccumulators.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DeviceAccumulators-objects as value to a dart map
  static Map<String, List<DeviceAccumulators>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DeviceAccumulators>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DeviceAccumulators.listFromJson(value);
       });
     }
     return map;
  }
}

