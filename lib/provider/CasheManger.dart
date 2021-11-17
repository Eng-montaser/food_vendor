import 'package:food_vendor/models/UserData.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheManger {
  Future<dynamic> saveData(CacheType cacheType, UserData data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    switch (cacheType) {
      case CacheType.userData:
        if (data.token != null) await prefs.setString("token", data.token);
        if (data.name != null) await prefs.setString("name", data.name);
        if (data.email != null) await prefs.setString("email", data.email);
        if (data.phone != null) await prefs.setString("phone", data.phone);
        if (data.role_id != null) await prefs.setInt("role_id", data.role_id);
        if (data.image != null) await prefs.setString("image", data.image);

        if (data.nationality != null)
          await prefs.setString("nationality", data.nationality);

        break;
      case CacheType.otherData:
        // TODO: Handle this case.
        break;
    }
  }

  Future<dynamic> getData(cacheType) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var data;
    switch (cacheType) {
      case CacheType.userData:
        UserData userData = new UserData(
          token: prefs.getString("token"),
          name: prefs.getString("name"),
          email: prefs.getString("email"),
          phone: prefs.getString("phone"),
          role_id: prefs.getInt("role_id"),
          image: prefs.getString("image"),
          nationality: prefs.getString("nationality"),
        );
        data = userData;
        break;
      case CacheType.otherData:
        // TODO: Handle this case.
        break;
    }
    return data;
  }

  Future<String> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = prefs.getString("token");
    return token != null ? token : null;
  }

  Future<bool> getIsLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool("is_login");
  }

  saveIsLogin(bool isLogin) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("is_login", isLogin);
  }

  Future<dynamic> removeData(CacheType cacheType) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    switch (cacheType) {
      case CacheType.userData:
        await prefs.remove("is_login");
        await prefs.remove("token");
        await prefs.remove("name");
        await prefs.remove("email");
        await prefs.remove("phone");
        await prefs.remove("role_id");
        await prefs.remove("image");
        await prefs.remove("nationality");

        break;
      case CacheType.otherData:
        // TODO: Handle this case.
        break;
    }
  }
}

enum CacheType { userData, otherData }
