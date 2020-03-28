import 'package:shared_preferences/shared_preferences.dart';

class UserStore {
  static final UserStore _instance = UserStore._internal();

  factory UserStore() {
    return _instance;
  }

  UserStore._internal() {}

  static const _USER_TOKEN = 'userToken';

  setUserToken(String userToken) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(_USER_TOKEN, userToken);
  }

  Future<String> getUserToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(_USER_TOKEN);
  }
}
