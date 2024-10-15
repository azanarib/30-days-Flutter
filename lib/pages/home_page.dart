import 'package:catalog_app/pages/login_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        color: Colors.white,
        child: Column(
          children: [
            Center(
              child: Container(
                // width: 200,
                // height: 200,
                color: Colors.white,
                child: const Text(
                  "Home Page",
                  style: TextStyle(fontSize: 50, color: Colors.blue),
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
                child: const Text("Back to home page"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
