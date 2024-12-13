import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/views/DefaultPage.dart';

import '../services/WbsocketServices.dart';
 // Ensure correct path



final webSocketServiceProvider = Provider<WebSocketService>((ref) {
  final webSocketService = WebSocketService();
  webSocketService.webSocketConnection();
  ref.onDispose(() => webSocketService.dispose());
  return webSocketService;
});


final pricesProvider = StreamProvider<Map<String, dynamic>>((ref) {
  final webSocketService = ref.watch(webSocketServiceProvider);
  print(webSocketService.stream);
  return webSocketService.stream;
});
