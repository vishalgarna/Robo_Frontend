import 'package:freezed_annotation/freezed_annotation.dart';
part 'tradeModel.freezed.dart';
part 'tradeModel.g.dart';

@freezed
class TradeModel with _$TradeModel
{
  factory TradeModel({
    required String entryTime,
    required String entryPrice,
    required String exitTime,
    required String profit,
}) =_TradeModel;

  factory TradeModel.fromJson(Map<String, dynamic>json) => _$TradeModelFromJson(json);

}