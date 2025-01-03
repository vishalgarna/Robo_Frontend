import 'package:flutter/material.dart';
import 'package:practice/models/strategiesHelpermodel/exitRule.dart';
import 'package:practice/models/strategiesHelpermodel/indicatormodel.dart';
import 'package:practice/models/strategiesHelpermodel/orderDetailsmodel.dart';
import 'package:practice/models/strategiesHelpermodel/entryRule.dart';
import 'package:practice/models/strategymodel/strategies_model.dart';
import 'package:practice/services/ApiServices.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();
mixin strategyServices {

  static final services = ApiServices();
  static String ? EntrySelectedIndicator ;
  static String ? EntrySelectedIndicator2 ;
  static String ? EntrySelectedCondition  ;
  static String ? ExitSelectedIndicator ;
  static String ? ExitSelectedIndicator2 ;
  static String ? ExitSelectedCondition  ;
  static String ? selectedTimeframe;
  static String ? EntryselectedAction;
  static String ? ExitelectedAction;

  static void resetStrings () {
    EntrySelectedIndicator  = null;
    EntrySelectedCondition  = null;
    ExitSelectedIndicator  = null;
    ExitSelectedIndicator2  = null;
    EntrySelectedIndicator2  = null;
    selectedTimeframe  = null;
    EntryselectedAction  = null;
    ExitelectedAction  = null;

  }


   static final qtyController = TextEditingController(text: "0.1");

  static List<String> indicators = ["SMA" ,"RSI" , "MACD" , "ADX"  , "HMA"];

  static Map<String, List<String>> indicatorParameters = {
    "SMA": ['period'],
    "RSI": ['period', 'Overbought Level', 'Oversold Level'],
    "MACD": ['Fast EMA Period', 'Slow EMA Period', 'Signal Line Period'],
    "ADX": ['period'],
    "HMA": ['period'],
  };


  static List<double>prices = [1.0475,157.01,1.266,0.8963,88.79,163.51,0.5656, 157.01,1.266 , 0.8963,88.79,108.56];

  static Map<String, Map<String, dynamic>> defaultvaluesOfIndicators = {
    "SMA": {'period': 14},
    "RSI": {'period': 14, 'Overbought Level': 70, 'Oversold Level': 30},
    "MACD": {'Fast EMA Period': 12, 'Slow EMA Period': 26, 'Signal Line Period': 9},
    "ADX": {'period': 14},
    "HMA": {'period': 14},
  };


  static List<String> conditions = ["isGreaterThan", "isLessThan" , "isEqual" , "isNotEqual" , "isGreaterThanEqual" ,"isLessThanEqual" ];

  static final searchControllers = TextEditingController();
  static List<String> foresPairs = [
    "EURUSDm", "USDJPYm", "GBPUSDm", "USDCHFm", "NZDJPYm",
    "EURJPYm", "NZDUSDm", "AUDJPYm",
     "AUDUSDm","GBPJPYm","DXYm"
    //  "AUDJPY", "EURAUD", "EURCHF", "AUDNZD",
    // "NZDJPY", "GBPAUD", "GBPCAD", "EURNZD", "AUDCAD", "GBPCHF", "AUDCHF",
    // "EURCAD", "CADJPY", "GBPNZD", "CADCHF", "CHFJPY", "NZDCAD", "NZDCHF",
    // "USDHKD", "GBPZAR", "EURZAR", "USDZAR", "AUDZAR", "CADZAR", "CHFZAR",
    // "JPYZAR", "NZDZAR", "TRYZAR", "BRLZAR", "MXNZD", "MXNJPY", "MXNCHF",
    // "MXNGBP", "MXNUSD", "MXNTRY", "MXNZAR", "MXNCHF", "MXNJPY", "MXNGBP",
    // "MXNUSD"
  ];

  static List<String>timeframes = ["1m" , "5m" , "15m" , "30m" , "1h" , "2h", "4h", "1d"];

  static Map<String , Map<String , TextEditingController>> controllersMap = {};

  static void initializeControllers (indicator , seltectindicator){
    controllersMap[seltectindicator] = {};
    for (var oneindicator in indicatorParameters[indicator]!) {
      controllersMap[seltectindicator]![oneindicator] = TextEditingController(
      text: defaultvaluesOfIndicators[indicator]![oneindicator].toString()
      );
    }


  }


  // this function is help to call strategies creation function rtetur nture and false after creating

  static Map<String, String>? getParameters(String key)
  {
    if (controllersMap.containsKey(key))
    { Map<String, TextEditingController> innerMap = controllersMap[key]!;
      Map<String, String> parameters = {};
      innerMap.forEach((paramKey, controller)
  { parameters[paramKey] = controller.text; });
      return parameters; } return null; }

  static Future<dynamic> callStrategiesfunction(String symbol , functionName , entryCondition)async{


    // initailazi all nescesary file to create strategies in this contirller
    final Entrymodel1 =IndicatorModel.create(type: EntrySelectedIndicator ?? "", parameters: getParameters('EntrySelectedIndicator') ?? {});// {"period" : 30});
    final Entrymodel2 = IndicatorModel.create(type: EntrySelectedIndicator2?? "", parameters: getParameters('EntrySelectedIndicator2') ?? {});
    // initailazi all nescesary file to create strategies in this contirller
    final Exitmodel1 =IndicatorModel.create(type: ExitSelectedIndicator ?? "", parameters: getParameters('ExitSelectedIndicator') ?? {});// {"period" : 30});
    final Exitmodel2 = IndicatorModel.create(type: ExitSelectedIndicator2?? "", parameters: getParameters('ExitSelectedIndicator2') ?? {});

    final entryRule =  EntryRuleModel(indicatorId: Entrymodel1.indicatorId, condition: EntrySelectedCondition ?? "", value: Entrymodel1.indicatorId, action: EntryselectedAction ?? "");
    final exitRule =  ExitRuleModel(indicatorId: Entrymodel1.indicatorId, condition: ExitSelectedCondition ?? "", value: Exitmodel2.indicatorId, action: EntryselectedAction ?? "");

    final  orderdetailsmodel =  OrderDetailsModel(orderType: "BUY", symbol:symbol , volume: 2, stopLoss: 2, takeProfit: 2);


    final model = StrategiesModel
      (
      userId: "674f044539c250120a20854e",
      strategyName: "new Strategy",
      timeframe: selectedTimeframe ?? '1m',
      description: "This iS testing",
      deployed: true,
      indicators: [Entrymodel1 , Entrymodel2 , Exitmodel1 , Exitmodel2],
      entryRuleModel: entryCondition,
      exitRuleModel: [exitRule],
      orderDetails: orderdetailsmodel,

    );
    final data = {
      "symbol" : orderdetailsmodel.symbol ?? " ",
       "strategy" : model,
      "timeframe" : "m1",
       "fromDate" : "2024-12-10",
      "toDate" : "2024-12-11"
    };

    controllersMap.clear();
    resetStrings();

    if(functionName == "backTest"){

      var response = await services.backTestResult(data).timeout(
        const Duration(seconds:10 ),
        onTimeout: () => null,
      );
      return response ;
    }

    return await services.createStrategy(model).timeout(const Duration(seconds: 10), onTimeout: ()=> false);


  }



}

class CustomSnackbar {

   static void show(BuildContext context , String message ,Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(

        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        content: Center(child: Text(message, style: const TextStyle(fontSize: 17))),
        backgroundColor: color,
        dismissDirection: DismissDirection.up,
      ),
    );
  }
}
