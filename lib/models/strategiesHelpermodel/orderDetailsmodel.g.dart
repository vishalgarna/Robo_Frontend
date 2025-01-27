// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orderDetailsmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderDetailsModelImpl _$$OrderDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderDetailsModelImpl(
      type: json['type'] as String?,
      symbol:
          (json['symbol'] as List<dynamic>?)?.map((e) => e as String).toList(),
      volume: (json['volume'] as num?)?.toInt(),
      stopLoss: (json['stopLoss'] as num?)?.toInt(),
      takeProfit: (json['takeProfit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OrderDetailsModelImplToJson(
        _$OrderDetailsModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'symbol': instance.symbol,
      'volume': instance.volume,
      'stopLoss': instance.stopLoss,
      'takeProfit': instance.takeProfit,
    };
