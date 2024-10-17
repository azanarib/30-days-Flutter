import 'package:catalog_app/pages/drawers.dart';
import 'package:catalog_app/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.indigo,
            title: const Text(
              "Login Page",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/login_page.png",
                    fit: BoxFit.cover,
                    width: 400,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 0.0,
                      bottom: 5.0,
                    ),
                    child: Text(
                      "Welcome",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const LoginPage(),
                ],
              ),
            ),
          ),
          drawer: MyDrawer(),
        ),
      ),
    );
  }
}
