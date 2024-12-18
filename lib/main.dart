import 'package:flutter/material.dart';
import 'package:flutter_b14/list_tile.dart';
import 'package:flutter_b14/login.dart';

import 'file_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListTileDemo(),
    );
  }
}
