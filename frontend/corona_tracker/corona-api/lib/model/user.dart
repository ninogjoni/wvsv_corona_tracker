part of openapi.api;

class User {
  
  String id = null;
  
  String name = null;
  
  String phoneHash = null;
  
  String token = null;
  
  List<HealthDataSet> healthHistory = [];
  User();

  @override
  String toString() {
    return 'User[id=$id, name=$name, phoneHash=$phoneHash, token=$token, healthHistory=$healthHistory, ]';
  }

  User.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    phoneHash = json['phoneHash'];
    token = json['token'];
    healthHistory = (json['healthHistory'] == null) ?
      null :
      HealthDataSet.listFromJson(json['healthHistory']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (phoneHash != null)
      json['phoneHash'] = phoneHash;
    if (token != null)
      json['token'] = token;
    if (healthHistory != null)
      json['healthHistory'] = healthHistory;
    return json;
  }

  static List<User> listFromJson(List<dynamic> json) {
    return json == null ? List<User>() : json.map((value) => User.fromJson(value)).toList();
  }

  static Map<String, User> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, User>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = User.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of User-objects as value to a dart map
  static Map<String, List<User>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<User>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = User.listFromJson(value);
       });
     }
     return map;
  }
}

