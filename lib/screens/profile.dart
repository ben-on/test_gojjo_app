import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue,
              ),
              const SizedBox(
                width: 30.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Full Name: User userf"),
                  SizedBox(height: 10.0),
                  Text("username: username"),
                  SizedBox(height: 10.0),
                  Text("Email: user@user.com"),
                  SizedBox(height: 10.0),
                  Text("Phone number: +251909090909"),
                  SizedBox(height: 10.0),
                  Text("Address: Addis Ababa, Ethiopia"),
                  SizedBox(height: 10.0),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text("Edit profile"),
            onTap: () {},
          ),
          // const SizedBox(height: 8),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text("Change password"),
            onTap: () {},
          ),
          // const SizedBox(height: 8),
          ListTile(
            leading: Icon(Icons.list),
            title: Text("Your posts"),
            onTap: () {},
          ),
          // const SizedBox(height: 8),
          ListTile(
            leading: Icon(Icons.list),
            title: Text("Your requests"),
            onTap: () {},
          ),
          // const SizedBox(height: 8),
          // TextButton(
          //   onPressed: () {},
          //   child: const Text("Edit profile"),
          // ),
          // const SizedBox(height: 8),
          // TextButton(
          //   onPressed: () {},
          //   child: const Text("Change password"),
          // ),
          // const SizedBox(height: 8),
          // TextButton(
          //   onPressed: () {},
          //   child: const Text("Your posts"),
          // ),
          // const SizedBox(height: 8),
          // TextButton(
          //   onPressed: () {},
          //   child: const Text("Your requests"),
          // ),
        ],
      ),
    );
  }
}
