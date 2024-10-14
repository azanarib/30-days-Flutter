import 'package:catalog_app/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String image =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRD8hgbI93QiMgTHnvYHgSUUbuJdBsWkpSw0Q&s";
    return MaterialApp(
      home: Material(
        child: Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text('Catalog App'),
            ),
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
              child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: SizedBox(
                    width: 500,
                    child: Image.network(
                      image,
                    ),
                  ),
                ),
                const LoginPage(),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
