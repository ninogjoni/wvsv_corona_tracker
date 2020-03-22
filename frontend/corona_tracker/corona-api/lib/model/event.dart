part of openapi.api;

class Event {
  
  String id = null;
  
  String type = null;
  /* in IS0 8601 format. eg. `1963-11-22T18:30:00Z` */
  DateTime serverTime = null;
  
  String positionId = null;
  
  String geofenceId = null;
  
  String maintenanceId = null;
  Event();

  @override
  String toString() {
    return 'Event[id=$id, type=$type, serverTime=$serverTime, positionId=$positionId, geofenceId=$geofenceId, maintenanceId=$maintenanceId, ]';
  }

  Event.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    type = json['type'];
    serverTime = (json['serverTime'] == null) ?
      null :
      DateTime.parse(json['serverTime']);
    positionId = json['positionId'];
    geofenceId = json['geofenceId'];
    maintenanceId = json['maintenanceId'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (type != null)
      json['type'] = type;
    if (serverTime != null)
      json['serverTime'] = serverTime == null ? null : serverTime.toUtc().toIso8601String();
    if (positionId != null)
      json['positionId'] = positionId;
    if (geofenceId != null)
      json['geofenceId'] = geofenceId;
    if (maintenanceId != null)
      json['maintenanceId'] = maintenanceId;
    return json;
  }

  static List<Event> listFromJson(List<dynamic> json) {
    return json == null ? List<Event>() : json.map((value) => Event.fromJson(value)).toList();
  }

  static Map<String, Event> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Event>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Event.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Event-objects as value to a dart map
  static Map<String, List<Event>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Event>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Event.listFromJson(value);
       });
     }
     return map;
  }
}

