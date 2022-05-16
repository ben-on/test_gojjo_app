import 'package:flutter/material.dart';
import 'package:gojjoapp/screens/profile.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Profile"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue[700],
      ),
      body: UserProfile(),
    );
  }
}
