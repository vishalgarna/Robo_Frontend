import 'package:flutter/material.dart';
import 'package:practice/models/strategiesHelpermodel/orderDetailsmodel.dart';
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

  static TextEditingController qtyController = TextEditingController(text: "0.1");

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
  static Map<String,List<String>> brokerCredentials = {"upstox" : ["appName" , "apiSecret" , "userid" , "apiKey"]};
  static Map<String , Map<String , TextEditingController>> controllersMap = {};
  static Map<String , Map<String , TextEditingController>> brokerControllers = {};


  static void setupBrokerControllers(String brokerName) {
    brokerControllers[brokerName] = {};

    for (String credential in brokerCredentials[brokerName]!) {
      brokerControllers[brokerName]![credential] = TextEditingController();
    }
  }

  static void initializeControllers (indicator , seltectindicator){
    controllersMap[seltectindicator] = {};
    for (var oneindicator in indicatorParameters[indicator]!) {
      controllersMap[seltectindicator]![oneindicator] = TextEditingController(
      text: defaultvaluesOfIndicators[indicator]![oneindicator].toString()
      );
    }


  }

  static Future<dynamic> callStrategiesfunction(List<String> pairsList , functionName , entryCondition)async{

    final  orderdetailsmodel =  OrderDetailsModel(type: strategyServices.EntryselectedAction ?? " ", symbol: pairsList , volume: 2, stopLoss: 2, takeProfit: 2);


    final model = StrategiesModel
      (
      userId: "674f044539c250120a20854e",
      strategyName: "new Strategy",
      timeframe: selectedTimeframe ?? '4h',
      description: "This iS testing",
      deployed: true,
      entryRuleModel: entryCondition,
      orderDetails: orderdetailsmodel,

    );
    controllersMap.clear();
    resetStrings();

    if(functionName == "backTest"){

      var response = await services.BacktestResults(model).timeout(
        const Duration(seconds:10 ),
        onTimeout: () => null,
      );
      return response ;
    }

    return await services.createStrategy(model).timeout(const Duration(seconds: 10), onTimeout: ()=> false);


  }

  static String getText(entryRuleModel) {
    // dynamic entryRuleModel = [
    //   {
    //     "type": "indicator",
    //     "name": "SMA",
    //     "parameters": {"time period": 50}
    //   },
    //   {
    //     "type": "condition",
    //     "name": "isGreaterThan"
    //   },
    //   {
    //     "type": "indicator",
    //     "name": "close",
    //     "parameters": {"time period": 200}
    //   },
    //   {
    //     "type": "logicalOperator",
    //     "name": "AND"
    //   },
    //   {
    //     "type": "indicator",
    //     "name": "MACD",
    //     "parameters": {
    //       "fast period": 12,
    //       "slow period": 26,
    //       "signal period": 9
    //     }
    //   }
    // ];

  late  String  text = " " ;
    entryRuleModel.forEach((entry) {
      entry.forEach((key, value) {
        if (key == "name" && entry["type"] == "indicator") {
          text += value.toString() ;
        } else if (key == "parameters") {
          text += getParameters(value);
        } else if (key == "name") {
          text += ' $value ';
        }
      });
    });
    return text;
  }

  static String getParameters(Map<String, dynamic> parameters) {
    return ' (${parameters.values.join(',')})';
  }


}

class CustomSnackbar {
   static void show(BuildContext context , String message ,Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(

        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.only(
          bottom: 20,
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
