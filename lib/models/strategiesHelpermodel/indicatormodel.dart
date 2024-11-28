import 'package:freezed_annotation/freezed_annotation.dart';

part 'indicatormodel.freezed.dart'; // For the freezed generated code
part 'indicatormodel.g.dart'; // For the json_serializable generated code

@freezed
class IndicatorModel with _$IndicatorModel {
  factory IndicatorModel({
    required String name,
    required String type,
    required Map<String, dynamic> parameters,
  }) = _IndicatorModel;

  factory IndicatorModel.fromJson(Map<String, dynamic> json) => _$IndicatorModelFromJson(json);
}
