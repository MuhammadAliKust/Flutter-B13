import 'package:flutter/material.dart';

class MultipleSelectionView extends StatefulWidget {
  MultipleSelectionView({super.key});

  @override
  State<MultipleSelectionView> createState() => _MultipleSelectionViewState();
}

class _MultipleSelectionViewState extends State<MultipleSelectionView> {
  List<int> selectedIndex = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Multiple Selection"),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, i) {
            return ListTile(
              onTap: () {
                if (selectedIndex.contains(i)) {
                  selectedIndex.remove(i);
                } else {
                  selectedIndex.add(i);
                }
                setState(() {});
              },
              leading: Icon(Icons.notifications),
              title: Text("Loop Index: $i"),
              subtitle: Text("Selected Index: $selectedIndex"),
              tileColor: selectedIndex.contains(i) ? Colors.blue : Colors.white,
            );
          }),
    );
  }
}
