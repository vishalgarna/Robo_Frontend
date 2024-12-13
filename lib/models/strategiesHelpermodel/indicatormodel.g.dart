// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indicatormodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IndicatorModelImpl _$$IndicatorModelImplFromJson(Map<String, dynamic> json) =>
    _$IndicatorModelImpl(
      indicatorId: json['indicatorId'] as String?,
      type: json['type'] as String?,
      parameters: json['parameters'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$IndicatorModelImplToJson(
        _$IndicatorModelImpl instance) =>
    <String, dynamic>{
      'indicatorId': instance.indicatorId,
      'type': instance.type,
      'parameters': instance.parameters,
    };
