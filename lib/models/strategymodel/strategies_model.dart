import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:practice/models/strategiesHelpermodel/indicatormodel.dart';
import 'package:practice/models/strategiesHelpermodel/rule.dart';

import '../strategiesHelpermodel/orderDetailsmodel.dart';

part 'strategies_model.freezed.dart';
part 'strategies_model.g.dart';

// StrategiesModel strategiesModelfromjson(dynamic str) => List<StrategiesModel>.from

@freezed
class StrategiesModel with _$StrategiesModel {
  factory StrategiesModel({
    required String userId,
    required String strategyName,
    required String description,
    required bool deployed,
    required List<IndicatorModel> indicators,
    required List<RuleModel> rules,
    required OrderDetailsModel orderDetails
  }) = _StrategiesModel;

  factory StrategiesModel.fromJson(Map<String, dynamic> json) => _$StrategiesModelFromJson(json);
}
