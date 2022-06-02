import 'package:flutter/material.dart';
import 'package:gojjoapp/screens/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  String _email = "";
  String _password = "";
  // String _currentForm = "loginForm";

  void _emailListener() {
    _email = _emailController.text.isEmpty ? "" : _emailController.text;
  }

  void _passwordListener() {
    _password =
        _passwordController.text.isEmpty ? "" : _passwordController.text;
  }

  _LoginScreenState() {
    _emailController.addListener(_emailListener);
    _passwordController.addListener(_passwordListener);
  }

  // void _currentFormChange() {
  //   setState(() {
  //     if (_currentForm == "loginForm") {
  //       _currentForm = "registerForm";
  //     } else if (_currentForm == "registerForm") {
  //       _currentForm = "registerForm";
  //     }
  //   });
  // }

  void _loginPressed() {
    print('The user wants to login with $_email and $_password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "login",
          // style: TextStyle(color: Colors.blue[700]),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue[700],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 218, 221, 220),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Column(
                  children: [
                    Container(
                      height: 210,
                      width: 320,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/appImages/house.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("GOJJO APPLICATION",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          letterSpacing: 1.1,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
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
                          "login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 1.1,
                          ),
                        ),
                      ),
                      onTap: _loginPressed,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account? "),
                        SizedBox(width: 16.0),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => SignupScreen()));
                          },
                          child: Text("signup"),
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
    );
  }
}
