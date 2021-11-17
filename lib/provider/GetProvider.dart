import 'package:food_vendor/service/GetService.dart';

import 'base_provider.dart';

class GetProvider extends BaseProvider {
  GetService _getService = GetService();
//  Future<List<MallData>> getMallData() async {
//    List<MallData> _mallData;
//    setBusy(true);
//    try {
//      var response = await _getService.getMallData();
//      if (response.statusCode == 200) {
//        var data = jsonDecode(response.body);
//        _mallData = [];
//        data['data'].forEach((mall) =>
//            _mallData.add(MallData.fromJson(mall)));
//        notifyListeners();
//        setBusy(false);
//      }
//    } catch (e) {
//      print(e);
//      setBusy(false);
//    }
//    setBusy(false);
//    return _mallData;
//  }
//  Future<bool> isStart() async {
//    bool result;
//    setBusy(true);
//    try {
//      var response = await _getService.isStart();
//      print(response.statusCode);
//      print('(${response.statusCode})');
//      print('(${response.body.toString()})');
//      if (response.statusCode == 200) {
//        var data = jsonDecode(response.body);
//        result=data['data']['data'];
//        notifyListeners();
//        setBusy(false);
//      }
//    } catch (e) {
//      print(e);
//      setBusy(false);
//    }
//    setBusy(false);
//    return result;
//  }
//  Future<bool> isEnd() async {
//    bool result;
//    List<MallData> _mallData;
//    setBusy(true);
//    try {
//      var response = await _getService.isEnd();
//      print(response.statusCode);
//      print(response.body.toString());
//      if (response.statusCode == 200) {
//        var data = jsonDecode(response.body);
//        result=data['data']['data'];
//        notifyListeners();
//        setBusy(false);
//      }
//    } catch (e) {
//      print(e);
//      setBusy(false);
//    }
//    setBusy(false);
//    return result;
//  }
//
//  Future<List<PointsData>> getAllPoints(TaskStatus taskStatus) async {
//    List<PointsData>pointsDataList=[];
//    setBusy(true);
//    try {
//      var response = await _getService.getAllPoints();
//      print(response.statusCode);
//      print(response.body.toString());
//      Map<dynamic,dynamic> da= jsonDecode(response.body);
//      print(da["data"]);
//      for(dynamic key in da.keys){
////        if(key!="assigned_points") {
//          print(key);
//          print(da[key].toString());
////        }
//      }
//      if (response.statusCode == 200) {
//        var data = jsonDecode(response.body);
//        switch (taskStatus){
//
//          case TaskStatus.Required:
//            data['data']['assigned_points'].forEach((point) =>
//                pointsDataList.add(PointsData.fromJson(point,TaskStatus.Required)));
//            data['data']['scandPoints'].forEach((point) =>
//                pointsDataList.add(PointsData.fromJson(point,TaskStatus.Required)));
//            data['data']['unScandPoints'].forEach((point) =>
//                pointsDataList.add(PointsData.fromJson(point,TaskStatus.Required)));
//            break;
//          case TaskStatus.Red:
//            data['data']['scandPoints'].forEach((point) =>
//                pointsDataList.add(PointsData.fromJson(point,TaskStatus.Required)));
//            break;
//          case TaskStatus.Missed:
//            data['data']['unScandPoints'].forEach((point) =>
//                pointsDataList.add(PointsData.fromJson(point,TaskStatus.Required)));
//            break;
//        }
//        notifyListeners();
//        setBusy(false);
//      }
//    } catch (e) {
//      print(e);
//      setBusy(false);
//    }
//    setBusy(false);
//    return pointsDataList;
//  }
//  Future<List<TasksData>> getTasks() async {
//    List<TasksData> _tasksDataList=[];
//    setBusy(true);
//    try {
//      var response = await _getService.getTasks();
//      print(response.statusCode);
//      print(response.body.toString());
//      if (response.statusCode == 200) {
//        var data = jsonDecode(response.body);
//        data['data'].forEach((taskData) =>
//            _tasksDataList.add(TasksData.fromJson(taskData)));
//        notifyListeners();
//        setBusy(false);
//      }
//    } catch (e) {
//      print(e);
//      setBusy(false);
//    }
//    setBusy(false);
//    return _tasksDataList;
//  }
}
