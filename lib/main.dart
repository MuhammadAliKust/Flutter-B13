import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.green,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "First Class",
            style: TextStyle(
                fontSize: 40.5,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          actions: [
            const Icon(Icons.notifications),
            const Icon(Icons.notifications),
            const Icon(Icons.notifications),
          ],
        ),
        body: Image.asset('assets/images/1.png'),
        // body: Image.network(
        //   "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg",
        // ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
