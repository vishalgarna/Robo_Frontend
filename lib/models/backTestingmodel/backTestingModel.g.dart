// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backTestingModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BackTestingModelImpl _$$BackTestingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BackTestingModelImpl(
      profitOrLoss: (json['profitOrLoss'] as num).toDouble(),
      orderCount: (json['orderCount'] as num).toInt(),
      trades: (json['trades'] as List<dynamic>)
          .map((e) => TradeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BackTestingModelImplToJson(
        _$BackTestingModelImpl instance) =>
    <String, dynamic>{
      'profitOrLoss': instance.profitOrLoss,
      'orderCount': instance.orderCount,
      'trades': instance.trades,
    };
