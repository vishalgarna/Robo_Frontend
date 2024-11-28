//
// import 'package:flutter_riverpod/flutter_riverpod.dart';
//
// import '../services/WbsocketServices.dart';
//
// // pahle humne websocketservices ko e kprovider banaya
// final  WebsocketServiceProvider = Provider((ref)=>WebSocketServices());
//
// // stockService ki state define kar ti jo abhi empty hai
// final StocksymbolProvider = StateProvider<List<String>>((ref)=>["ETHUSD"]);
//
//
// final stockpriceProvider = StreamProvider<Map <String , double>>((ref){
//
//   final webSocketservice = ref.watch(WebsocketServiceProvider);
//    final symbols = ref.watch(StocksymbolProvider);
//
//    webSocketservice.webSocketConnection(symbols);
//    return webSocketservice.stream;
// });
//
