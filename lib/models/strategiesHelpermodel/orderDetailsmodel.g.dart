// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orderDetailsmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderDetailsModelImpl _$$OrderDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderDetailsModelImpl(
      orderType: json['orderType'] as String,
      symbol: json['symbol'] as String,
      volume: (json['volume'] as num).toDouble(),
      stopLoss: (json['stopLoss'] as num).toDouble(),
      takeProfit: (json['takeProfit'] as num).toDouble(),
    );

Map<String, dynamic> _$$OrderDetailsModelImplToJson(
        _$OrderDetailsModelImpl instance) =>
    <String, dynamic>{
      'orderType': instance.orderType,
      'symbol': instance.symbol,
      'volume': instance.volume,
      'stopLoss': instance.stopLoss,
      'takeProfit': instance.takeProfit,
    };
