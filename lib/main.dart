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
        backgroundColor: Colors.green,
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
        body: const Column(
          children: [
            Text(
              "Lorem Ipsum has been the industry's standard ",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type ",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.add),
                Icon(Icons.add),
                Icon(Icons.add),
                Icon(Icons.add),
              ],
            )
          ],
        ),
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
