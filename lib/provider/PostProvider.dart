import 'dart:convert';

import 'package:food_vendor/service/PostService.dart';

import 'base_provider.dart';

class PostProvider extends BaseProvider {
  PostService _postService = PostService();
//  Future<bool> sos(SosData sosData) async {
//    bool result = false;
//    setBusy(true);
//    try {
//      var response = await _postService.sos(sosData);
//      print('${response.statusCode} ${response.body}');
//      if (response.statusCode == 200) {
//        var data = jsonDecode(response.body);
//
//        result = true;
//        notifyListeners();
//        setBusy(false);
//      } else
//        return false;
//    } catch (e) {
//      setBusy(false);
//      return false;
//    }
//    setBusy(false);
//    return result;
//  }
//
//  Future<dynamic> sendIncidents(IncidentsData incidentsData) async {
//    setBusy(true);
//    try {
//      var response = await _postService.sendIncidents(incidentsData);
//
//      print(response.statusCode);
//      print(response.body.toString());
//      if (response.statusCode == 200) {
//        var data = jsonDecode(response.body);
//
//        notifyListeners();
//        setBusy(false);
//        return data;
//      }
//    } catch (e) {
//      setBusy(false);
//      print(e);
//    }
//    setBusy(false);
//    return false;
//  }

  Future<dynamic> scan(String scanData) async {
    //bool result = false;
    setBusy(true);
    try {
      var response = await _postService.scan(scanData);

      print(response.statusCode);
      print('ttt ${response.body}');
      var data = jsonDecode(response.body);
      return data;
//      if (response.statusCode == 201) {
//        var data = jsonDecode(response.body);
//
//        notifyListeners();
//        setBusy(false);
//        return data;
//      }
    } catch (e) {
      setBusy(false);
      // return false;
    }
    setBusy(false);
    return false;
  }

  Future<bool> startTour(var loc) async {
    bool result = false;
    setBusy(true);
    try {
      var response = await _postService.startTour(loc);
      var data = jsonDecode(response.body);
      print(response.statusCode);
      print('(${response.statusCode})');
      print('(${response.body.toString()})');
      if (response.statusCode == 200) {
        result = true;
        notifyListeners();
        setBusy(false);
      }
    } catch (e) {
      setBusy(false);
    }
    setBusy(false);
    return result;
  }

  Future<bool> endTour(var loc) async {
    bool result = false;
    setBusy(true);
    try {
      var response = await _postService.endTour(loc);
      var data = jsonDecode(response.body);
      print(response.statusCode);
      print('(${response.statusCode})');
      print('(${response.body.toString()})');
      if (response.statusCode == 200) {
        result = true;
        notifyListeners();
        setBusy(false);
      }
    } catch (e) {
      setBusy(false);
    }
    setBusy(false);
    return result;
  }

  Future<bool> receivedTask(int id) async {
    bool result = false;
    setBusy(true);
//    try {
    var response = await _postService.receivedTask(id);
    var data = jsonDecode(response.body);
    print(response.statusCode);
    print('(${response.statusCode})');
    print('(${response.body.toString()})');
    if (response.statusCode == 200) {
      result = true;
      notifyListeners();
      setBusy(false);
    }
//    } catch (e) {
//      setBusy(false);
//    }
    setBusy(false);
    return result;
  }

  Future<bool> updateTask(int id, String notes, String status) async {
    bool result = false;
    setBusy(true);
    try {
      var response = await _postService.updateTask(id, notes, status);
      var data = jsonDecode(response.body);
      print(response.statusCode);
      print('(${response.statusCode})');
      print('(${response.body.toString()})');
      if (response.statusCode == 200) {
        result = true;
        notifyListeners();
        setBusy(false);
      }
    } catch (e) {
      setBusy(false);
    }
    setBusy(false);
    return result;
  }
}
