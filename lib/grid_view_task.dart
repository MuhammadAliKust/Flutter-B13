import 'package:flutter/material.dart';

class GridViewTask extends StatelessWidget {
  const GridViewTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Grid View"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 2.5,crossAxisSpacing: 10,mainAxisSpacing: 10),
              itemBuilder: (context, i) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.6)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Icon(Icons.add), Text("Add"), Icon(Icons.add)],
                    ),
                  ),
                );
              }),
        ));
  }
}
