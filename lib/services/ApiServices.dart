import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:practice/models/backTestingmodel/backTestingModel.dart';
import 'package:practice/models/ordermodel/orderModel.dart';
import 'package:practice/models/strategymodel/strategies_model.dart';

import '../config/appUrls.dart';


final apiserivces = Provider((ref)=>ApiServices());
class ApiServices  {

  Future<bool> createStrategy(StrategiesModel model) async {
    try {
      var response = await http
          .post(
        Uri.parse("http://13.203.50.253:2003/api/create-strategy"),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "strategyName": model.strategyName,
          "timeframe": model.timeframe,
          "description": model.description,
          "deployed": model.deployed,
          "indicators": model.indicators,
          "entryRuleModel": model.entryRuleModel,
          "exitRuleModel": model.exitRuleModel,
          "orderDetails": model.orderDetails,
        }),
      )
          .timeout(const Duration(seconds: 10));

      if (response.statusCode == 200) {
        return true;
      } else {
        print('Failed to create strategy. Status code: ${response.statusCode}');
        return false;
      }
    } catch (e) {
      print('Error: ${e.toString()}');
      return false;
    }
  }

  Future<List<StrategiesModel>?> getAllStrategy() async {
    try {
      Map<String, String> requestHeaders = {
        "Content-Type": "application/json",
        "userid": "674f044539c250120a20854e",
      };

      var response = await http.get(
        Uri.parse("http://13.203.50.253:2003/api/get-strategy"),
        headers: requestHeaders,
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        return strategiesModelFromJson(data["data"]);
      } else {
        return null;
      }
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
  List<StrategiesModel> strategiesModelFromJson(List<dynamic> str) {
    return List<StrategiesModel>.from(
      str.map((data) => StrategiesModel.fromJson(data)),
    ).toList();
  }




Future<bool>deleteStrategy(id) async {
  try
  {
    var response = await http.delete(Uri.parse('http://13.203.50.253:2003/api/delete-strategy/'+id)).timeout(
      const Duration(seconds: 10));

    if(response.statusCode == 200){
      return true;
    }
    else{
      return false;
    }
  }  catch(e) {

    print(e.toString());
    return false;

  }
}

Future<BackTestingModel ?>backTestResult( data) async {
  try
  {
    var response = await http.post(Uri.parse(config.baseUrlforstrategy+config.getbacktestresult ) ,
        body: jsonEncode(data)).timeout(
      const Duration(seconds: 10),);

    if(response.statusCode == 200){
      var data = jsonDecode(response.body);
      return BackTestingModel.fromJson(data['data']);
    }
    else{
      return null;
    }
  }  catch(e) {

    print(e.toString());
    return null;

  }
}
 Future<bool> placeOrder(OrderModel model) async {
    try {
      var response = await http.post(
        Uri.parse("http://13.203.50.253:5800/vishal"),
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode({
          "symbol": model.symbol,
          "volume": model.volume,
          "type": model.type,
        }),
      ).timeout(const Duration(seconds: 10));

      if (response.statusCode == 200) {
        return true;
      } else {
        print('Failed to place order. Status code: ${response.statusCode}');
        return false;
      }
    } catch (e) {
      print('Error: ${e.toString()}');
      return false;
    }
  }


  Future<bool> addImportan(data) async {
    try {
      var response = await http
          .post(
        Uri.parse("http://13.203.50.253:2003/create-important"),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "timeframe": data["timeframe"],
          "orderDetails": data["orderDetails"],
        }),
      )
          .timeout(const Duration(seconds: 10));

      if (response.statusCode == 200) {
        return true;
      } else {
        print('Failed to create strategy. Status code: ${response.statusCode}');
        return false;
      }
    } catch (e) {
      print('Error: ${e.toString()}');
      return false;
    }
  }

}