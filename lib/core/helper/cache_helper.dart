

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
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

  static  getString({required String key}){
    return sharedPreferences.get(key) ?? "";
  }

  static  getInt({required String key}){
    return sharedPreferences.get(key) ?? 0;
  }
  static getBool({required String key}){
    return sharedPreferences.get(key) ?? false;
  }
  static getDouble({required String key}){
    return sharedPreferences.get(key) ?? 0.0;
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



  /// Saves a [value] with a [key] in the FlutterSecureStorage.
  static setSecuredString(String key, String value) async {
    const flutterSecureStorage = FlutterSecureStorage();
    debugPrint(
        "FlutterSecureStorage : setSecuredString with key : $key and value : $value");
    await flutterSecureStorage.write(key: key, value: value);
  }

  /// Gets an String value from FlutterSecureStorage with given [key].
  static getSecuredString(String key) async {
    const flutterSecureStorage = FlutterSecureStorage();
    debugPrint('FlutterSecureStorage : getSecuredString with key :');
    return await flutterSecureStorage.read(key: key) ?? '';
  }

}