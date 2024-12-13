import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:practice/models/strategymodel/strategies_model.dart';

part 'strategiesState.freezed.dart';
@freezed
class StrategiesState  with _$StrategiesState {

  factory StrategiesState({

    @Default(<StrategiesModel> []) List<StrategiesModel> strategieslist,
    @Default(false) bool isLoading ,

}) = _StrategiesState;

}