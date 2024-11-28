// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indicatormodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IndicatorModelImpl _$$IndicatorModelImplFromJson(Map<String, dynamic> json) =>
    _$IndicatorModelImpl(
      name: json['name'] as String,
      type: json['type'] as String,
      parameters: json['parameters'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$IndicatorModelImplToJson(
        _$IndicatorModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'parameters': instance.parameters,
    };
