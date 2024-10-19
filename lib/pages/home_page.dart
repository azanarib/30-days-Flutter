import 'package:catalog_app/models/items.dart';
import 'package:catalog_app/pages/login_page.dart';
import 'package:catalog_app/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List myList = List.generate(50, (index) => Catalog.products[0]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            setState(() {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            });
          },
          child: Icon(
            Icons.arrow_back,
          ),
        ),
        title: Text(
          "Home Page",
        ),
      ),
      body: ListView.builder(
          itemCount: myList.length,
          itemBuilder: (context, index) {
            return MyWidget(products: myList[index]);
          }),
    );
  }
}
