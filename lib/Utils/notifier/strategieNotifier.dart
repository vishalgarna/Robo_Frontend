import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/Utils/StradegyCreatetion_Utilities.dart';
import 'package:practice/Utils/states/strategiesState.dart';
import 'package:practice/models/strategymodel/strategies_model.dart';
import 'package:practice/services/ApiServices.dart';


class StrategiesNotifier extends StateNotifier<StrategiesState>{
  final ApiServices _apiservices;
  StrategiesNotifier(this._apiservices) : super(StrategiesState());

  // *********** get
  Future<void> getStategies (BuildContext context)async{

    state = state.copyWith(isLoading:  true);

    var data ;
    try{
       data = await _apiservices.getAllStrategy();
    }
    catch(e){
      CustomSnackbar.show(context , e.toString() , Colors.red.shade600);
    }


if(data != null){
  state = state.copyWith(strategieslist: data);
}

state =state.copyWith(isLoading:  false);

return ;
  }

  //*************  remove
  Future<bool> removeStrategies (BuildContext context ,id)async{

    state = state.copyWith(isLoading: true);

    var result ;
    try{
      result = await _apiservices.deleteStrategy(id);
      state = state.copyWith(isLoading: false);
      state = state.copyWith(
        strategieslist: state.strategieslist.where((e) => e.id != id).toList(),
      );

      if(result){

        return true;
      }
      return false;
    }
    catch(e){
      CustomSnackbar.show(context , e.toString() , Colors.red);
      return false;
    }
  }


}

