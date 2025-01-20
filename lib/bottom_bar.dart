import 'package:flutter/material.dart';
import 'package:flutter_b14/list_tile.dart';
import 'package:flutter_b14/login.dart';
import 'package:flutter_b14/task_view.dart';

class BottomBarView extends StatefulWidget {
  BottomBarView({super.key});

  @override
  State<BottomBarView> createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {
  int selectedIndex = 0;

  List<Widget> screenList = [LoginView(), TaskView(), ListTileDemo()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (val) {
            selectedIndex = val;
            setState(() {});
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorite'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }
}
