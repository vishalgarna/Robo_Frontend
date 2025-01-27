


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/models/strategymodel/strategies_model.dart';
import 'package:practice/services/ApiServices.dart';

class backtestNotifier extends StateNotifier{
   ApiServices _apiservices ;
  backtestNotifier(this._apiservices): super({});

  void getResults(StrategiesModel model){

  }


}