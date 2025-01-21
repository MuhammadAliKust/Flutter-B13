import 'package:flutter/material.dart';
import 'package:flutter_b14/list_tile.dart';
import 'package:flutter_b14/login.dart';
import 'package:flutter_b14/task_view.dart';

class TabbarViewDemo extends StatelessWidget {
  const TabbarViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          bottom: TabBar(tabs: [
            Text("Home"),
            Text("Favorite"),
            Text("Profile"),
          ]),
        ),
        body: TabBarView(children: [
         LoginView(),
          ListTileDemo(),
          TaskView()
        ]),
      ),
    );
  }
}
