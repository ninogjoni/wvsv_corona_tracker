part of openapi.api;

class User {
  
  String token = null;
  
  String phoneHash = null;
  
  List<HealthDataSet> healthHistory = [];
  User();

  @override
  String toString() {
    return 'User[token=$token, phoneHash=$phoneHash, healthHistory=$healthHistory, ]';
  }

  User.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    token = json['token'];
    phoneHash = json['phoneHash'];
    healthHistory = (json['healthHistory'] == null) ?
      null :
      HealthDataSet.listFromJson(json['healthHistory']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (token != null)
      json['token'] = token;
    if (phoneHash != null)
      json['phoneHash'] = phoneHash;
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

