import 'package:freezed_annotation/freezed_annotation.dart';

part 'backTestingModel.freezed.dart';
part 'backTestingModel.g.dart';

@freezed
class BackTestingModel with _$BackTestingModel {
  factory BackTestingModel({
    required int afterTrade,
    required int investedAmount,
    required Map<String,TradeData ?>? resultBacktesPairs,
})= _BackTestingModel;

  factory BackTestingModel.fromJson(Map<String,dynamic>json) => _$BackTestingModelFromJson(json);
}

@freezed
class TradeData with _$TradeData {
  factory TradeData({
    required int afterTrade,
    required int slHit,
    required int tpHit,
    required int totalTrades,
  }) = _TradeData;

  factory TradeData.fromJson(Map<String, dynamic> json) => _$TradeDataFromJson(json);
}
