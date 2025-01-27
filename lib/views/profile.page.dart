import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("profile"),
      ),
     body:   const Padding(
       padding: EdgeInsets.all(8.0),
       child: Center(child: Text('Hy, this is Profile Page .This Page Is Under Process Please visit After Sometime :)')),
     ),
    );


  }
}
