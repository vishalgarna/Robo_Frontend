
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:practice/models/backTestingmodel/tradesmodel/tradeModel.dart';

part 'backTestingModel.freezed.dart';
part 'backTestingModel.g.dart';

@freezed
class BackTestingModel with _$BackTestingModel {
  factory BackTestingModel({

    required double profitOrLoss,
    required int orderCount,
    required List<TradeModel> trades

}) =_BackTestingModel;

  factory BackTestingModel.fromJson(Map<String, dynamic>json) => _$BackTestingModelFromJson(json);

}