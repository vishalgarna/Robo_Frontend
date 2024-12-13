// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tradeModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TradeModelImpl _$$TradeModelImplFromJson(Map<String, dynamic> json) =>
    _$TradeModelImpl(
      entryTime: json['entryTime'] as String,
      entryPrice: json['entryPrice'] as String,
      exitTime: json['exitTime'] as String,
      profit: json['profit'] as String,
    );

Map<String, dynamic> _$$TradeModelImplToJson(_$TradeModelImpl instance) =>
    <String, dynamic>{
      'entryTime': instance.entryTime,
      'entryPrice': instance.entryPrice,
      'exitTime': instance.exitTime,
      'profit': instance.profit,
    };
