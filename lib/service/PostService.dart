import 'package:food_vendor/models/UserData.dart';
import 'package:http/http.dart' as http;

import 'base_api.dart';

class PostService extends BaseApi {
  Future<http.Response> register(AuthenticationData authenticationData) async {
    return await api.httpPost("register", authenticationData.getSignUpBody());
  }

  Future<http.Response> login(AuthenticationData data) async {
    return await api.httpPost("login", data.getLoginBody());
  }

  Future<http.Response> logout() async {
    return await api.httpPost("logout", {});
  }

  Future<http.Response> startTour(data) async {
    return await api.httpPost("start_tour", data);
  }

  Future<http.Response> endTour(data) async {
    return await api.httpPost("end_tour", data);
  }

  Future<http.Response> setFcmToken(String token) async {
    return await api.httpPost('fcm', {'fcm_token': token.toString()});
  }
//  Future<http.Response> sos(SosData sosData) async {
//    return await api.httpPost("sos", sosData.getBody());
//  }

//  Future<http.Response> sendIncidents(IncidentsData incidentsData) async {
//    return await api.httpPostWithFiles("incidents",
//        incidentsData: incidentsData);
//  }

  Future<http.Response> scan(String scanData) async {
    return await api.httpPost("scan", {"qr_text": scanData});
  }

  Future<http.Response> updateUserData(file, AuthenticationData data) async {
    return file != null
        ? await api.httpPostWithFile("user/update", file: file, data: data)
        : await api.httpPost("user/update", data.getUpdateBody());
  }

  Future<http.Response> receivedTask(
    int id,
  ) async {
    return await api
        .httpPatch("tasks/${id}", {"is_recived": '1', "status": "recived"});
  }

  Future<http.Response> updateTask(int id, String notes, String status) async {
    return await api
        .httpPatch("tasks/${id}", {"notes": notes, "status": status});
  }
}
