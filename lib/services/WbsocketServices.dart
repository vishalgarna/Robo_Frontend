import 'dart:async';
import 'dart:convert';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketService {
  WebSocketChannel? channel;
  final Map<String, double> prices = {};
  final streamController = StreamController<Map<String, double>>.broadcast();

  // Stream ko expose karna
  Stream<Map<String, double>> get stream => streamController.stream;

  Future<void> webSocketConnection(String symbol) async {
    // Establish WebSocket connections
    Uri url = Uri.parse("wss://marketdata.tradermade.com/feedadv");
    channel = WebSocketChannel.connect(url);

    final request = jsonEncode({
      "userKey": "wsNo66yCxOL1mRXR3egQ",
      "symbol": "ETHUSD" // Only one symbol
    });

    channel?.sink.add(request);
    channel?.stream.listen((message) {
      final data = jsonDecode(message);

      // Specific symbol ka price update karna
      prices[data['symbol']] = data['mid'];
      print(prices);
      streamController.sink.add(Map<String, double>.from(prices)); // Updated map ko stream karna
    }, onError: (error) {
      print('WebSocket Error: $error');
      _reconnect(symbol); // Error handling ke liye reconnect logic
    });
  }

  void _reconnect(String symbol) {
    Future.delayed(Duration(seconds: 5), () {
      webSocketConnection(symbol);
    });
  }

  void disconnect() {
    channel?.sink.close();
    streamController.close();
  }
}
