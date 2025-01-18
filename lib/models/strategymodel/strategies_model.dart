import 'package:practice/models/strategiesHelpermodel/orderDetailsmodel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'strategies_model.freezed.dart';
part 'strategies_model.g.dart';

List<StrategiesModel> StrategiesModelFromJson(dynamic str) {
  return List<StrategiesModel>.from(str.map((data) => StrategiesModel.fromJson(data))).toList();
}

@freezed
class StrategiesModel with _$StrategiesModel {
  factory StrategiesModel({
    String? id,
    required String? userId,
    required String? timeframe,
    required String? strategyName,
    required String? description,
    required bool? deployed,
    required List ? entryRuleModel,
    required OrderDetailsModel? orderDetails,
  }) = _StrategiesModel;

  factory StrategiesModel.fromJson(Map<String, dynamic> json) => _$StrategiesModelFromJson(json);
}
