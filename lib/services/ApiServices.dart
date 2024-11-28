
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:practice/models/strategymodel/strategies_model.dart';

class Apiservices {

  Future<bool> cresteStratigie ()async {

     StrategiesModel ? model ;
    var response = await http.post(Uri.parse('uri'),

      body: jsonEncode({
        "userId" : model!.userId,
        "strategyName" : model.strategyName,
        "description" : model.description,
        "indicators" : model.indicators,
        "rules" : model.rules,
        "orderDetails" : model.orderDetails,

      })

    );

    if(response.statusCode == 200)
      {
        return true;
      }
    else{
      return false;
    }


  }

  Future<List<StrategiesModel>?> getStratigies ()async {

    var response = await http.get(Uri.parse('uri'));

    if(response.statusCode == 200){
      var data = jsonDecode(response.body);


    }

  }
}