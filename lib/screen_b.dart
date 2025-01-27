import 'package:flutter/material.dart';

class ScreenBView extends StatelessWidget {
  final String name;
  final String email;

  const ScreenBView({super.key, required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen B"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(name,style: TextStyle(fontSize: 30),),
            Text(email,style: TextStyle(fontSize: 30),),
          ],
        ),
      ),
    );
  }
}