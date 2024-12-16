import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Login",
          style: TextStyle(color: Colors.white),
        ),
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          Icon(Icons.notifications),
          Icon(Icons.shopping_cart),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          TextField(
            decoration: InputDecoration(
                label: Text("Email"),
                hintText: 'test@gmail.com',
                prefixIcon: Icon(Icons.email),
                suffixIcon: Icon(Icons.email),
                filled: true,
                fillColor: Colors.blue.withOpacity(0.5),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.green, width: 5)),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.green, width: 5)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.green, width: 5))),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            decoration: InputDecoration(
                label: Text("Passwrod"),
                hintText: 'Password must be 6 or more characters.',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.lock),
                filled: true,
                fillColor: Colors.blue.withOpacity(0.5),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.green, width: 5)),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.green, width: 5)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.green, width: 5))),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Forgot Password?",
              style: TextStyle(fontSize: 15),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Login"))
        ],
      ),
    );
  }
}
