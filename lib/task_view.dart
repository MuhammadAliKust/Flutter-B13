import 'package:flutter/material.dart';

class TaskView extends StatefulWidget {
  const TaskView({super.key});

  @override
  State<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task"),
      ),
      body: ListView.builder(itemBuilder: (context, i) {
        return Column(
          children: [
            Image.asset('assets/images/1.png'),
            Text("Title"),
            Text("Description"),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    selectedIndex = i;
                    setState(() {});
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: selectedIndex == i ? Colors.red : Colors.black,
                  ),
                ),
                Icon(Icons.favorite),
                Icon(Icons.favorite),
                Icon(Icons.favorite),
              ],
            )
          ],
        );
      }),
    );
  }
}
