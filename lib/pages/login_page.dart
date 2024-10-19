import 'package:catalog_app/widgets/drawers.dart';
import 'package:catalog_app/pages/home_page.dart';
import 'package:catalog_app/widgets/app_bar_theme.dart';
import 'package:flutter/material.dart';

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // String name = "";
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightThemeData(context),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "Login Page",
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
        drawer: const MyDrawer(),
      ),
    );
  }
}

// String name = "";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChange = true; // For Password
  bool changeButton = false; // Button Anumation
// This code is for Form validation.
  final _formKey = GlobalKey<FormState>();
  myFunction(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      changeButton = true;
      setState(() {});
      await Future.delayed(
        const Duration(seconds: 2),
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const MyHomePage(),
        ),
      );
      setState(() {});
      Future.delayed(const Duration(seconds: 2));
      changeButton = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Username cannot be empty.";
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(
                  20,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                prefixIcon: const Icon(
                  Icons.email,
                ),
                hintText: "Enter username or email",
                labelText: "Username or email",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 5,
              left: 15.0,
              right: 15,
              bottom: 15,
            ),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Password cannot be empty.";
                } else if (value.length <= 7) {
                  return "Password must contains 8 characters.";
                } else {
                  return null;
                }
              },
              obscureText: isChange,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                prefixIcon: const Icon(Icons.lock),
                hintText: "Enter password",
                labelText: "Password",
                suffixIcon: GestureDetector(
                  onTap: () {
                    isChange = !isChange;
                    setState(() {});
                  },
                  child: const Icon(
                    Icons.remove_red_eye_rounded,
                  ),
                ),
              ),
            ),
          ),
          Material(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(changeButton ? 150 : 8.0),
            child: InkWell(
              onTap: () => myFunction(context),
              child: AnimatedContainer(
                width: changeButton ? 50 : 250,
                height: 50,
                duration: const Duration(
                  seconds: 1,
                ),
                child: changeButton
                    ? const Icon(
                        Icons.done,
                        color: Colors.white,
                      )
                    : const Center(
                        child: Text(
                          "login",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              bottom: 8.0,
              top: 18.0,
            ),
            child: Row(
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                    Colors.deepPurple,
                  )),
                  onPressed: () {},
                  child: const Center(
                    child: Text(
                      "Sign up",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
