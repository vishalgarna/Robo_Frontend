
import 'package:flutter/cupertino.dart';

mixin strategyServices {

  static String ? selectedIndicator ;
  static String ? selectedCondition  ;
  static String ? selectedIndicator2 ;
  static String ? selectedTimeframe;

   static final qtyController = TextEditingController();

  static List<String> indicators = ["SMA" ,"RSI" , "MACD" , "ADX"  , "ADX"];

  static Map<String , List<String>> indicatorParmeter = {
    "SMA"  : ['period'],
    "RSI" : ['Period', 'Overbought Level', 'Oversold Level'],
    "MACD" :  ['Fast EMA Period', 'Slow EMA Period', 'Signal Line Period'],
    // "BollingetBand" : ['Period', 'Standard Deviation'],
    "ADX" : ['Period'],
    "HMA": ['Period']
  };


  static Map<String , Map<String ,String>> defaultvaluesOfIndicators = {


    "SMA": {'period': "14"},
    "RSI": {'Period ': '15', 'Overbought Level': '15', 'Oversold Level': '15'},
    "MACD": {
      'Fast EMA Period': "78",
      'Slow EMA Period': "14",
      'Signal Line Period': "40"
    },
    // "BollingetBand": { 'Period': "78", 'Standard Deviation': "12"},
    "ADX": {'Period': "78"},
    "HMA": {'Period': "45"}
  };

  static List<String> conditions = ["isgreaterthan", "isLsessetThan" , "isequal"];

  static final searchControllers = TextEditingController();
  static List<String> foresPairs = [
    "EURUSD", "USDJPY", "GBPUSD", "USDCHF", "NZDUSD",
    "EURJPY", "GBPJPY","SOLUSD", "ADAUSD" , "XRPUSD",
     "AUDJPY", "EURAUD", "EURCHF", "AUDNZD",
    "NZDJPY", "GBPAUD", "GBPCAD", "EURNZD", "AUDCAD", "GBPCHF", "AUDCHF",
    "EURCAD", "CADJPY", "GBPNZD", "CADCHF", "CHFJPY", "NZDCAD", "NZDCHF",
    "USDHKD", "GBPZAR", "EURZAR", "USDZAR", "AUDZAR", "CADZAR", "CHFZAR",
    "JPYZAR", "NZDZAR", "TRYZAR", "BRLZAR", "MXNZD", "MXNJPY", "MXNCHF",
    "MXNGBP", "MXNUSD", "MXNTRY", "MXNZAR", "MXNCHF", "MXNJPY", "MXNGBP",
    "MXNUSD"
  ];

  static List<String>timeframes = ["1m" , "5m" , "15m"];

  static Map<String , Map<String , TextEditingController>> controlersMap = {};

  static void initailizeControlers (indicator , seltectindicator){
    controlersMap[seltectindicator] = {};
    indicatorParmeter[indicator]!.forEach((oneindicator){
       controlersMap[seltectindicator]![oneindicator] = TextEditingController(
      text: defaultvaluesOfIndicators[indicator]![oneindicator]
      );
    });


  }


}