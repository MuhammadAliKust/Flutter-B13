import 'package:flutter/material.dart';
import 'package:flutter_b14/providers/user.dart';
import 'package:provider/provider.dart';

class ScreenBView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var user = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen B"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              user.getName,
              style: TextStyle(fontSize: 30),
            ),
            // Text(email,style: TextStyle(fontSize: 30),),
          ],
        ),
      ),
    );
  }
}
