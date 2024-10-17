import 'package:catalog_app/pages/login_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Center(
            child: Text(
              "Home Page",
              style: TextStyle(
                fontSize: 50,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
            child: Center(
              child: Text("Back to Login page"),
            ),
          )
        ],
      ),
    );
  }
}
