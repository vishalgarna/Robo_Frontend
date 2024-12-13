// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exitRule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExitRuleModelImpl _$$ExitRuleModelImplFromJson(Map<String, dynamic> json) =>
    _$ExitRuleModelImpl(
      indicatorId: json['indicatorId'] as String?,
      condition: json['condition'] as String?,
      value: json['value'] as String?,
      action: json['action'] as String?,
    );

Map<String, dynamic> _$$ExitRuleModelImplToJson(_$ExitRuleModelImpl instance) =>
    <String, dynamic>{
      'indicatorId': instance.indicatorId,
      'condition': instance.condition,
      'value': instance.value,
      'action': instance.action,
    };
