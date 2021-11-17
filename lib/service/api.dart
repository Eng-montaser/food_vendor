import 'dart:io';

import 'package:food_vendor/models/UserData.dart';
import 'package:food_vendor/provider/CasheManger.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';

class Api {
  static final _api = Api._internal();

  factory Api() {
    return _api;
  }
  Api._internal();

  ///  Temporrary*****************************************

  ///*****************************************************
  String baseUrl = 'food_vendor.tech';
  String path = '/api';
  Future<http.Response> httpGet(String endPath,
      {Map<String, String> query}) async {
    String token = await CacheManger().getToken();

    Uri uri = Uri.https(baseUrl, '$path/$endPath');
    if (query != null) {
      uri = Uri.https(baseUrl, '$path/$endPath', query);
    }
    return http.get(uri, headers: {
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
    });
  }

  Future<http.Response> httpPost(String endPath, Object body) async {
    String token = await CacheManger().getToken();
    print(token);
    print(body);
    Uri uri = Uri.https(baseUrl, '$path/$endPath');
    return http.post(uri, body: body, headers: {
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
    });
  }

  Future<http.Response> httpPatch(String endPath, Object body) async {
    String token = await CacheManger().getToken();
    print(token);
    print(body);
    Uri uri = Uri.https(baseUrl, '$path/$endPath');
    return http.patch(uri, body: body, headers: {
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
    });
  }

  Future<http.Response> httpPostWithFile(String endPath,
      {File file, AuthenticationData data}) async {
    String token = await CacheManger().getToken();
    print(token);
    Map<String, String> headers = {
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
    };
    Map<String, String> body = data.getUpdateBody();
    Uri uri = Uri.https(baseUrl, '$path/$endPath');
    var length = await file.length();
    http.MultipartRequest request = new http.MultipartRequest('POST', uri)
      ..headers.addAll(headers)
      ..fields.addAll(body)
      ..files.add(
        http.MultipartFile('image', file.openRead(), length,
            filename: basename(file.path)),
      );
    return await http.Response.fromStream(await request.send());
  }

  /*Future<http.Response> httpPostWithFiles(String endPath,
      {IncidentsData incidentsData}) async {
    String token = await CacheManger().getToken();
    Map<String, String> headers = {
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
    };
    List<http.MultipartFile> temps = [];
    Uri uri = Uri.http(baseUrl, '$path/$endPath');

    for (var file in incidentsData.photos) {
      var length = await file.length();
      temps.add(http.MultipartFile('photos[]', file.openRead(), length,
          filename: basename(file.path)));
    }

    Map<String, String> data = {
      'name': incidentsData.name,
      'description': incidentsData.description,
    };
    http.MultipartRequest request = new http.MultipartRequest('POST', uri)
      ..headers.addAll(headers)
      ..fields.addAll(data)
      ..files.addAll(temps);
    return await http.Response.fromStream(await request.send());
  }
*/

}
