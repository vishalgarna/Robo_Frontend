// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RuleModelImpl _$$RuleModelImplFromJson(Map<String, dynamic> json) =>
    _$RuleModelImpl(
      condition: json['condition'] as String,
      indicator: json['indicator'] as String,
      comparison: json['comparison'] as String,
      value: json['value'] as String,
      action: json['action'] as String,
    );

Map<String, dynamic> _$$RuleModelImplToJson(_$RuleModelImpl instance) =>
    <String, dynamic>{
      'condition': instance.condition,
      'indicator': instance.indicator,
      'comparison': instance.comparison,
      'value': instance.value,
      'action': instance.action,
    };
