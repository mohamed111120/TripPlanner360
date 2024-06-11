
import 'package:shared_preferences/shared_preferences.dart';

class SharedHelper {
  static  SharedPreferences? prefs;

  static init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static Future<dynamic> set({required String key, required dynamic value}) async {
    if (value is int) {
     return await prefs!.setInt(key, value);
    } else if (value is String) {
     return await prefs!.setString(key, value);
    } else if (value is double) {
     return await prefs!.setDouble(key, value);
    } else if (value is bool) {
     return await prefs!.setBool(key, value);
    } else {}
  }

 static get({required String key})  {
  return  prefs!.get(key);
  }

  static remove({required String key}) async {
     await prefs!.remove(key);
  }

  static clear() async {
    await prefs!.clear();
  }
}
