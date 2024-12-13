import 'package:freezed_annotation/freezed_annotation.dart';

part 'exitRule.freezed.dart';
part 'exitRule.g.dart';

@freezed
class ExitRuleModel with _$ExitRuleModel {
  factory ExitRuleModel({
    required String? indicatorId,
    required String? condition,
    required String? value,
    required String? action,
  }) = _ExitRuleModel;

  factory ExitRuleModel.fromJson(Map<String, dynamic> json) => _$ExitRuleModelFromJson(json);
}
