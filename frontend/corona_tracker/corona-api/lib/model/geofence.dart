part of openapi.api;

class Geofence {
  
  String id = null;
  
  String name = null;
  
  String description = null;
  
  String area = null;
  Geofence();

  @override
  String toString() {
    return 'Geofence[id=$id, name=$name, description=$description, area=$area, ]';
  }

  Geofence.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    description = json['description'];
    area = json['area'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (description != null)
      json['description'] = description;
    if (area != null)
      json['area'] = area;
    return json;
  }

  static List<Geofence> listFromJson(List<dynamic> json) {
    return json == null ? List<Geofence>() : json.map((value) => Geofence.fromJson(value)).toList();
  }

  static Map<String, Geofence> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Geofence>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Geofence.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Geofence-objects as value to a dart map
  static Map<String, List<Geofence>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Geofence>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Geofence.listFromJson(value);
       });
     }
     return map;
  }
}

