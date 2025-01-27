// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backTestingModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BackTestingModelImpl _$$BackTestingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BackTestingModelImpl(
      afterTrade: (json['afterTrade'] as num).toInt(),
      investedAmount: (json['investedAmount'] as num).toInt(),
      resultBacktesPairs:
          (json['resultBacktesPairs'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k,
            e == null ? null : TradeData.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$BackTestingModelImplToJson(
        _$BackTestingModelImpl instance) =>
    <String, dynamic>{
      'afterTrade': instance.afterTrade,
      'investedAmount': instance.investedAmount,
      'resultBacktesPairs': instance.resultBacktesPairs,
    };

_$TradeDataImpl _$$TradeDataImplFromJson(Map<String, dynamic> json) =>
    _$TradeDataImpl(
      afterTrade: (json['afterTrade'] as num).toInt(),
      slHit: (json['slHit'] as num).toInt(),
      tpHit: (json['tpHit'] as num).toInt(),
      totalTrades: (json['totalTrades'] as num).toInt(),
    );

Map<String, dynamic> _$$TradeDataImplToJson(_$TradeDataImpl instance) =>
    <String, dynamic>{
      'afterTrade': instance.afterTrade,
      'slHit': instance.slHit,
      'tpHit': instance.tpHit,
      'totalTrades': instance.totalTrades,
    };
