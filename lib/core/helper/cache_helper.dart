

import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;
  static Future cacheInit()async{
    sharedPreferences = await SharedPreferences.getInstance();
  }
static Future<bool> insertCache({required String key,required dynamic value})async{

    if(value is String) await sharedPreferences.setString(key, value);
    if(value is int) await sharedPreferences.setInt(key, value);
    if(value is bool) await sharedPreferences.setBool(key, value);
    if(value is double) await sharedPreferences.setDouble(key, value);

      return await sharedPreferences.setBool(key, value);


}
static dynamic getCacheData({required String key}){
    return sharedPreferences.get(key) ?? "";
}



// on boarding

  Future<void> setOnBoardingScreenViewed() async {
    sharedPreferences.setBool('onBoarding', true);
  }

  Future<bool> isOnBoardingScreenViewed() async {
    return sharedPreferences.getBool('onBoarding') ??
        false;
  }

  //login

  Future<void> setUserLoggedIn() async {
    sharedPreferences.setBool('token', true);
  }

  Future<bool> isUserLoggedIn() async {
    return sharedPreferences.getBool("token") ?? false;
  }

  Future<void> logout() async {
    sharedPreferences.remove("token");
  }

}