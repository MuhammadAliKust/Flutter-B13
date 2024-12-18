import 'package:flutter/material.dart';

class ListTileDemo extends StatelessWidget {
  const ListTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        title: Text(
          "List Tile",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Card(
            elevation: 5,
            color: Colors.green,
            child: ListTile(
              leading: Icon(Icons.message),
              title: Text("Ikram Rehman"),
              subtitle: Text("Ali bhai class kis time pe h?"),
              trailing: Text("11:45 PM"),
            ),
          ),
          Card(
            elevation: 5,
            color: Colors.green,
            child: ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Notification Title"),
              subtitle: Text("Notification Sub Title"),
              trailing: Text("11:45 PM"),
            ),
          ),
          Card(
            elevation: 5,
            color: Colors.green,
            child: ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Notification Title"),
              subtitle: Text("Notification Sub Title"),
              trailing: Text("11:45 PM"),
            ),
          ),
          Card(
            elevation: 5,
            color: Colors.green,
            child: ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Notification Title"),
              subtitle: Text("Notification Sub Title"),
              trailing: Text("11:45 PM"),
            ),
          ),
        ],
      ),
    );
  }
}
