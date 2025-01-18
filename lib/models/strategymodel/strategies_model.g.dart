// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'strategies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StrategiesModelImpl _$$StrategiesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StrategiesModelImpl(
      id: json['_id'] as String?,
      userId: json['userId'] as String?,
      timeframe: json['timeframe'] as String?,
      strategyName: json['strategyName'] as String?,
      description: json['description'] as String?,
      deployed: json['deployed'] as bool?,
      entryRuleModel: json['entryRuleModel'] as List<dynamic>?,
      orderDetails: json['orderDetails'] == null
          ? null
          : OrderDetailsModel.fromJson(
              json['orderDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StrategiesModelImplToJson(
        _$StrategiesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'timeframe': instance.timeframe,
      'strategyName': instance.strategyName,
      'description': instance.description,
      'deployed': instance.deployed,
      'entryRuleModel': instance.entryRuleModel,
      'orderDetails': instance.orderDetails,
    };
