import 'package:freezed_annotation/freezed_annotation.dart';

part 'orderModel.freezed.dart';
part 'orderModel.g.dart';
@freezed
 class OrderModel  with _$OrderModel {
  factory OrderModel({
    required String action,
    required String symbol,
    required String type,
    required double volume,
}) = _OrderModel;

   factory OrderModel.fromJson(Map<String, dynamic>json)=> _$OrderModelFromJson(json);
}