import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  String _fullName = "";
  String _email = "";
  String _password = "";

  void _fullNameListener() {
    _fullName =
        _fullNameController.text.isEmpty ? "" : _fullNameController.text;
  }

  void _emailListener() {
    _email = _emailController.text.isEmpty ? "" : _emailController.text;
  }

  void _passwordListener() {
    _password =
        _passwordController.text.isEmpty ? "" : _passwordController.text;
  }

  _SignupScreenState() {
    _fullNameController.addListener(_fullNameListener);
    _emailController.addListener(_emailListener);
    _passwordController.addListener(_passwordListener);
  }

  void _createAccountPressed() {
    print(
        "The user want to create an account with\n Name: $_fullName \n email: $_email \n Password: $_password");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Signup",
          // style: TextStyle(color: Colors.blue[700]),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue[700],
      ),
      body: SingleChildScrollView(
        child: Positioned(
          // bottom: 0,
          // top: 0,

          child: Container(
            // height: double.maxFinite,

            // color: Color.fromARGB(255, 218, 221, 220),
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: double.maxFinite,
                  color: Colors.blue[400],
                  child: const Center(
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                        fontFamily: "karla",
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 30.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 275,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        alignment: Alignment.center,
                        child: TextFormField(
                          controller: _fullNameController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            hintText: 'Enter your full name',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // Container(
                      //   width: 275,
                      //   decoration: BoxDecoration(
                      //     color: Colors.white,
                      //     borderRadius: BorderRadius.circular(20.0),
                      //   ),
                      //   alignment: Alignment.center,
                      //   child: TextFormField(
                      //     decoration: InputDecoration(
                      //       border: OutlineInputBorder(
                      //         borderRadius: BorderRadius.circular(20.0),
                      //       ),
                      //       hintText: 'Enter your username',
                      //     ),
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      Container(
                        width: 275,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        alignment: Alignment.center,
                        child: TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            hintText: 'Enter your email',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 275,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        alignment: Alignment.center,
                        child: TextField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            hintText: 'Enter your password',
                          ),
                          obscureText: true,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      GestureDetector(
                        child: Container(
                          width: 275,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(46, 229, 218, 0.94),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(15.0),
                          child: const Text(
                            "Register",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 1.1,
                            ),
                          ),
                        ),
                        onTap: _createAccountPressed,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account? "),
                          SizedBox(width: 16.0),
                          TextButton(
                            onPressed: () {},
                            child: Text("signin"),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
