import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'indicatormodel.freezed.dart'; // For the freezed generated code
part 'indicatormodel.g.dart'; // For the json_serializable generated code

var uuid = Uuid();

@freezed
class IndicatorModel with _$IndicatorModel {
  factory IndicatorModel({
    required String? indicatorId,
    required String? type,
    required Map<String, dynamic>? parameters,
  }) = _IndicatorModel;

  factory IndicatorModel.fromJson(Map<String, dynamic> json) => _$IndicatorModelFromJson(json);

  factory IndicatorModel.create({
    required String type,
    required Map<String, dynamic> parameters,
  }) {
    String uniqueId = uuid.v4().substring(uuid.v4().length - 10); // Last 10 characters of UUID
    return IndicatorModel(
      indicatorId: uniqueId,
      type: type,
      parameters: parameters,
    );
  }
}
