import 'package:freezed_annotation/freezed_annotation.dart';

part 'orderDetailsmodel.freezed.dart';
part 'orderDetailsmodel.g.dart';

@freezed
class OrderDetailsModel with _$OrderDetailsModel {
  factory OrderDetailsModel({
    required String orderType,
    required String symbol,
    required double volume,
    required double stopLoss,
    required double takeProfit,
  }) = _OrderDetailsModel;

  factory OrderDetailsModel.fromJson(Map<String, dynamic> json) => _$OrderDetailsModelFromJson(json);
}
