import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.grey,
      home: Material(
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 150,
              ),
              child: Container(
                width: 650,
                height: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "facebook",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Connect with friends and the world",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      "around you on Facebook.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 380,
              width: 450,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15.0,
                      left: 10,
                      right: 10,
                      bottom: 15.0,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Email or phone number",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      bottom: 15,
                    ),
                    child: TextField(
                      obscureText: isVisible,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Password",
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("Hello World");
                    },
                    child: Container(
                      height: 50,
                      width: 380,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 18.0,
                      bottom: 30.0,
                      left: 8,
                      right: 8,
                    ),
                    child: Table(
                      children: [
                        TableRow(
                          children: [
                            Container(
                              height: 2,
                              width: 5,
                              color: Colors.black45,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 65,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Create new account",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
