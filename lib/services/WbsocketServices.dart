import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketService {
  WebSocketChannel? channel;
  Map<String, dynamic> prices = {};
  final streamController = StreamController<Map<String, dynamic>>.broadcast();

  Stream<Map<String, dynamic>> get stream => streamController.stream;

  Future<void> webSocketConnection() async {
    try {
      channel = WebSocketChannel.connect(Uri.parse("wss://marketdata.tradermade.com/feedadv"));

      final request = jsonEncode({
        "userKey": "wsVIl_0HsKk9NhXqKJgA",
        "symbol": "EURUSD,USDJPY,GBPUSD,USDCHF,NZDJPY,EURJPY,AUDJPY,NZDUSD,ETHUSD"
      });

      channel?.sink.add(request);
    } on SocketException {
      print("SocketException: Unable to connect to the WebSocket.");
    } catch (e) {
      print("Connection Error: $e");
    }

    channel?.stream.listen((message) {
      // Log the raw message for debugging
      // print("Raw message: $message");

      try {
        // Decode the message
        var data = jsonDecode(message);
        // print("Decoded data: $data");

        // Ensure data has correct structure and types
        if (data.containsKey("symbol") && data.containsKey("mid")) {
          prices[data["symbol"]] = data["mid"];
          Future.delayed(Duration(seconds: 5), () => streamController.sink.add(prices));
        } else {
          print("Error: Invalid data format or missing keys.");
        }
      } catch (e) {
        print("Error decoding data: $e");
      }
    }, onDone: () {
      print("WebSocket connection closed.");
      streamController.close();
    }, onError: (error) {
      print("WebSocket error: $error");
      streamController.close();
    });
  }

  void dispose() {
    channel?.sink.close();
    streamController.close();
  }
}
