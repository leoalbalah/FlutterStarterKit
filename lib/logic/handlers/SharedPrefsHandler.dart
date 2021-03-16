import 'package:flutterstarterkit/logic/models/SharedData.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class SharedPref {
  read(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return json.decode(prefs.getString(key));
  }

  save(String key, value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, json.encode(value));
  }

  remove(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }
}

Future<int> checkPermanentData() async {
  SharedPref sharedPref = SharedPref();
  try {
    SharedData data = SharedData.fromJson(await sharedPref.read("sharedData"));
    print("Data found!");
    return data.count;
  } catch (Exception) {
    print("Data not found!");
    return 0;
  }
}

increaseCount() async {
  SharedPref sharedPref = SharedPref();
  SharedData data = SharedData();
  data.count = await checkPermanentData();
  data.count += 1;

  sharedPref.save("sharedData", data);
}
