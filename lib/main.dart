import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/views/DefaultPage.dart';
import 'package:practice/views/backtesTingResultsView.dart';
import 'package:practice/views/strategyCreationPage.dart';

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
        textTheme:  const TextTheme(
        ),

cardTheme: CardTheme(
  color: Colors.grey.shade50
),
        inputDecorationTheme: const InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black)
          ),
enabledBorder: OutlineInputBorder(
  borderSide: BorderSide(color: Colors.black)
),
          border: OutlineInputBorder(
            borderSide: BorderSide(
color: Colors.black
            )
          )
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue.shade200,
            textStyle: const TextStyle(
              fontSize: 15,
              color: Colors.white,

            )
          ),

        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blue.shade500
        ),
        scaffoldBackgroundColor: Colors.blueGrey[50],
        appBarTheme: AppBarTheme(
          color: Colors.blueGrey.shade100
        ), textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.black),


      ),

     home:  Defaultpage(),
    );
  }
}
