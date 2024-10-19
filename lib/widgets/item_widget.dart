import 'package:catalog_app/models/items.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final Items products;

  const MyWidget({super.key, required this.products})
      : assert(products != null);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.white,
        elevation: 5,
        child: ListTile(
          leading: Image.network(
            products.image,
          ),
          title: Text(
            products.name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(products.descr),
          trailing: Text(
            "\$${products.price}",
            textScaleFactor: 1.5,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
