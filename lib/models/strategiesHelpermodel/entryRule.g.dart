// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entryRule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EntryRuleModelImpl _$$EntryRuleModelImplFromJson(Map<String, dynamic> json) =>
    _$EntryRuleModelImpl(
      indicatorId: json['indicatorId'] as String?,
      condition: json['condition'] as String?,
      value: json['value'] as String?,
      action: json['action'] as String?,
    );

Map<String, dynamic> _$$EntryRuleModelImplToJson(
        _$EntryRuleModelImpl instance) =>
    <String, dynamic>{
      'indicatorId': instance.indicatorId,
      'condition': instance.condition,
      'value': instance.value,
      'action': instance.action,
    };
