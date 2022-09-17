import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class ShareHelper {
  static SharedPreferences? sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> setDate({
    required String key,
    required bool value,
  }) {
    return sharedPreferences!.setBool(key, value);
  }
  static bool getDate({
    required String key,
  }) {
    return sharedPreferences!.getBool(key)??false;
  }
}
