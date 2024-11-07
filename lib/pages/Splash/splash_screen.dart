import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "MyDoctor App",
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          MyButtonState(),
        ],
      ),
    );
  }
}

class MyButtonState extends StatefulWidget {
  const MyButtonState({super.key});

  @override
  State<MyButtonState> createState() => _MyButtonStateState();
}

class _MyButtonStateState extends State<MyButtonState> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 15,
      ),
      width: 250,
      height: 35,
      child: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(
              Colors.purple,
            ),
          ),
          onPressed: () {
            showDialog(
              useRootNavigator: true,
              context: (context),
              builder: (context) {
                return AlertDialog(
                  content: Text("Are you ready?"),
                );
              },
            );
          },
          child: Center(
            child: Text(
              "Get started",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
