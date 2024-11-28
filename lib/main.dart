import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/pages/strategyCreationPage.dart';
import 'package:practice/pages/strategypage.dart';

import 'pages/searchPairpage.dart';

void main() {
  runApp(
    const ProviderScope(child : MyApp() ),
     );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue.shade200,
            textStyle: const TextStyle(
              fontSize: 15,
              color: Colors.white,

            )
          )
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blue.shade500
        ),
        scaffoldBackgroundColor: Colors.blueGrey[50],
        appBarTheme: AppBarTheme(
          color: Colors.blueGrey.shade100
        ),


      ),
      home: const StrategyPage(),
      // home:  StrategyCreationPage(),
    );
  }
}
