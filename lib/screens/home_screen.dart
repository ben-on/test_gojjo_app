import 'package:flutter/material.dart';

import 'home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gojjo",
          // style: TextStyle(color: Colors.blue[700]),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue[700],
      ),
      body: Home(),
    );
  }
}
