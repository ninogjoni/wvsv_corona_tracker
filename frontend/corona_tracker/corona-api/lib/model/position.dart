part of openapi.api;

class Position {
  
  String id = null;
  
  String userId = null;
  /* in IS0 8601 format. eg. `1963-11-22T18:30:00Z` */
  DateTime time = null;
  
  num latitude = null;
  
  num longitude = null;
  
  num altitude = null;
  /* Position accuracy in meters (radius), lower is better */
  int accuracy = null;
  Position();

  @override
  String toString() {
    return 'Position[id=$id, userId=$userId, time=$time, latitude=$latitude, longitude=$longitude, altitude=$altitude, accuracy=$accuracy, ]';
  }

  Position.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    userId = json['userId'];
    time = (json['time'] == null) ?
      null :
      DateTime.parse(json['time']);
    latitude = json['latitude'];
    longitude = json['longitude'];
    altitude = json['altitude'];
    accuracy = json['accuracy'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (userId != null)
      json['userId'] = userId;
    if (time != null)
      json['time'] = time == null ? null : time.toUtc().toIso8601String();
    if (latitude != null)
      json['latitude'] = latitude;
    if (longitude != null)
      json['longitude'] = longitude;
    if (altitude != null)
      json['altitude'] = altitude;
    if (accuracy != null)
      json['accuracy'] = accuracy;
    return json;
  }

  static List<Position> listFromJson(List<dynamic> json) {
    return json == null ? List<Position>() : json.map((value) => Position.fromJson(value)).toList();
  }

  static Map<String, Position> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Position>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Position.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Position-objects as value to a dart map
  static Map<String, List<Position>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Position>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Position.listFromJson(value);
       });
     }
     return map;
  }
}

