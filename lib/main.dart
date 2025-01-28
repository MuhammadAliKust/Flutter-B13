import 'package:flutter/material.dart';
import 'package:flutter_b14/bottom_bar.dart';
import 'package:flutter_b14/bottom_sheet.dart';
import 'package:flutter_b14/dialog_box.dart';
import 'package:flutter_b14/dynamic_list_view_demo.dart';
import 'package:flutter_b14/grid_view.dart';
import 'package:flutter_b14/list_tile.dart';
import 'package:flutter_b14/list_view_demo.dart';
import 'package:flutter_b14/login.dart';
import 'package:flutter_b14/multiple_selection.dart';
import 'package:flutter_b14/page_view.dart';
import 'package:flutter_b14/providers/user.dart';
import 'package:flutter_b14/screen_a.dart';
import 'package:flutter_b14/single_selection.dart';
import 'package:flutter_b14/tabbar_view.dart';
import 'package:flutter_b14/task_view.dart';
import 'package:provider/provider.dart';

import 'file_image.dart';
import 'grid_view_task.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => UserProvider())],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenAView(),
    );
  }
}
