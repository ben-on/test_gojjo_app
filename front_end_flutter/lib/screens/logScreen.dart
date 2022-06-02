import 'package:flutter/material.dart';
import 'package:gojjoapp/screens/signup.dart';

class LoginScrn extends StatefulWidget {
  const LoginScrn({Key? key}) : super(key: key);

  @override
  State<LoginScrn> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScrn> {
  final _emailController = TextEditingController();
  final _fullNameController = TextEditingController();
  final _passwordController = TextEditingController();
  String _email = "";
  String _fullName = "";
  String _password = "";
  String _currentForm = "loginForm";

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

  _LoginScreenState() {
    _fullNameController.addListener(_fullNameListener);
    _emailController.addListener(_emailListener);
    _passwordController.addListener(_passwordListener);
  }

  void _currentFormChange() {
    setState(() {
      if (_currentForm == "loginForm") {
        _currentForm = "registerForm";
      } else if (_currentForm == "registerForm") {
        _currentForm = "registerForm";
      }
    });
  }

  void _loginPressed() {
    print('The user wants to login with $_email and $_password');
  }

  void _createAccountPressed() {
    print(
        "The user want to create an account with\n Name: $_fullName \n email: $_email \n Password: $_password");
  }

  @override
  Widget build(BuildContext context) {
    if (_currentForm == "loginForm") {
      return _loginScrn();
    } else {
      return _signupScrn();
    }
  }

  Widget _signupScrn() {
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
        child: Container(
          color: Color.fromARGB(255, 218, 221, 220),
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
                          onPressed: _currentFormChange,
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
    );
  }

  Widget _loginScrn() {
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
          // height: double.infinity,
          color: Color.fromARGB(255, 218, 221, 220),
          child: ListView(
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
                          onPressed: _currentFormChange,
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
