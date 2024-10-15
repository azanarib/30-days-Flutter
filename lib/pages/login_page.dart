import 'package:catalog_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChange = true; // For Password
  bool changeButton = false; // Button Animation

  final formKey = GlobalKey<FormState>();
  myFunction(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      changeButton = true;
      setState(() {});

      setState(() {});
      await Future.delayed(const Duration(seconds: 1));
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    }
    await Future.delayed(const Duration(seconds: 2));
    changeButton = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
          key: formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Username cannot be empty";
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
                color: Colors.blue,
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
              )
            ],
          )),
    );
  }
}
