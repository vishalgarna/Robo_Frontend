import 'package:freezed_annotation/freezed_annotation.dart';

part 'rule.freezed.dart';
part 'rule.g.dart';

@freezed
class RuleModel with _$RuleModel {
  factory RuleModel({
    required String condition,
    required String indicator,
    required String comparison,
    required String value,
    required String action,
  }) = _RuleModel;

  factory RuleModel.fromJson(Map<String, dynamic> json) => _$RuleModelFromJson(json);
}
