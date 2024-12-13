// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orderModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      action: json['action'] as String,
      symbol: json['symbol'] as String,
      type: json['type'] as String,
      volume: (json['volume'] as num).toDouble(),
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'action': instance.action,
      'symbol': instance.symbol,
      'type': instance.type,
      'volume': instance.volume,
    };
