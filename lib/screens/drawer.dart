import 'package:flutter/material.dart';
import 'package:gojjoapp/screens/home_screen.dart';
import 'package:gojjoapp/screens/logScreen.dart';
import 'package:gojjoapp/screens/login.dart';
import 'package:gojjoapp/screens/post_form_screen.dart';
import 'package:gojjoapp/screens/request_form_screen.dart';
import 'package:gojjoapp/screens/signup.dart';
import 'package:gojjoapp/screens/user_profile.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: const Color.fromARGB(255, 7, 156, 255),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 30,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "username: user",
                            style: TextStyle(
                                color: Colors.white, letterSpacing: 1.1),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "email: user@user.com",
                            style: TextStyle(
                                color: Colors.white, letterSpacing: 1.1),
                          )
                        ],
                      ),
                      IconButton(
                        icon: const Icon(Icons.edit),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return Profile();
                          }));
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text("Home"),
                  leading: Icon(Icons.home),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return HomeScreen();
                    }));
                  },
                ),
                ListTile(
                  title: Text("Add post"),
                  leading: Icon(Icons.add),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return PostScreen();
                    }));
                  },
                ),
                ListTile(
                  title: Text("Add request"),
                  leading: Icon(Icons.add),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return RequestScreen();
                    }));
                  },
                ),
                const ListTile(
                  title: Text("About"),
                  leading: Icon(Icons.more_vert_outlined),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return LoginScreen();
                          });
                    },
                    child: Text(
                      "logout",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return SignupScreen();
                      }));
                    },
                    child: const Text(
                      "signup",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return LoginScrn();
                      }));
                    },
                    child: const Text(
                      "login",
                      style: TextStyle(fontWeight: FontWeight.bold),
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
