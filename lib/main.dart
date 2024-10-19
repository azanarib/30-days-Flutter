import 'dart:async';
import 'package:catalog_app/widgets/drawers.dart';
import 'package:catalog_app/pages/login_page.dart';
import 'package:catalog_app/widgets/app_bar_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Material(
        child: Column(
          children: [
            MyScreen(),
          ],
        ),
      ),
    );
  }
}

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 4),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const MyLoginPage(),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.indigo,
        child: Center(
          child: Text(
            "Catalog app",
            style: TextStyle(
              color: Colors.white,
              fontFamily: GoogleFonts.gideonRoman().fontFamily,
              fontSize: 80,
            ),
          ),
        ),
      ),
    );
  }
}
