part of openapi.api;

class Friend {
  
  String id = null;
  
  String phoneHash = null;
  Friend();

  @override
  String toString() {
    return 'Friend[id=$id, phoneHash=$phoneHash, ]';
  }

  Friend.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    phoneHash = json['phoneHash'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (phoneHash != null)
      json['phoneHash'] = phoneHash;
    return json;
  }

  static List<Friend> listFromJson(List<dynamic> json) {
    return json == null ? List<Friend>() : json.map((value) => Friend.fromJson(value)).toList();
  }

  static Map<String, Friend> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Friend>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Friend.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Friend-objects as value to a dart map
  static Map<String, List<Friend>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Friend>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Friend.listFromJson(value);
       });
     }
     return map;
  }
}

