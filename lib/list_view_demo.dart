import 'package:flutter/material.dart';


class ListViewDemo extends StatelessWidget {
  const ListViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View Demo"),),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, i){
        return Card(
          elevation: 5,
          color: Colors.green,
          child: ListTile(
            leading: Icon(Icons.message),
            title: Text("Ikram Rehman $i"),
            subtitle: Text("Ali bhai class kis time pe h?"),
            trailing: Text("11:45 PM"),
          ),
        );
      }),
    );
  }
}
