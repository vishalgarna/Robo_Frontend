// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'strategies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StrategiesModelImpl _$$StrategiesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StrategiesModelImpl(
      userId: json['userId'] as String,
      strategyName: json['strategyName'] as String,
      description: json['description'] as String,
      deployed: json['deployed'] as bool,
      indicators: (json['indicators'] as List<dynamic>)
          .map((e) => IndicatorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      rules: (json['rules'] as List<dynamic>)
          .map((e) => RuleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      orderDetails: OrderDetailsModel.fromJson(
          json['orderDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StrategiesModelImplToJson(
        _$StrategiesModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'strategyName': instance.strategyName,
      'description': instance.description,
      'deployed': instance.deployed,
      'indicators': instance.indicators,
      'rules': instance.rules,
      'orderDetails': instance.orderDetails,
    };
