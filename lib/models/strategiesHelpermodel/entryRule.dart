import 'package:freezed_annotation/freezed_annotation.dart';

part 'entryRule.freezed.dart';
part 'entryRule.g.dart';

@freezed
class EntryRuleModel with _$EntryRuleModel {
  factory EntryRuleModel({
    required String? indicatorId,
    required String? condition,
    required String? value,
    required String? action,
  }) = _EntryRuleModel;

  factory EntryRuleModel.fromJson(Map<String, dynamic> json) => _$EntryRuleModelFromJson(json);
}

