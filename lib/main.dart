import 'package:flutter/material.dart';
import 'package:gojjoapp/models/tab_manager.dart';
import 'package:gojjoapp/screens/drawer.dart';
import 'package:gojjoapp/screens/home.dart';
import 'package:gojjoapp/screens/profile.dart';
import 'package:gojjoapp/screens/request_form.dart';
import 'package:gojjoapp/screens/upload_form.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(GojjoApp());
}

class GojjoApp extends StatefulWidget {
  const GojjoApp({Key? key}) : super(key: key);

  @override
  State<GojjoApp> createState() => _GojjoAppState();
}

class _GojjoAppState extends State<GojjoApp> {
  static List<Widget> screens = <Widget>[
    Home(),
    PostForm(
      onCreate: (_) {},
    ),
    RequestForm(),
    UserProfile(),
  ];

  // int selectedScreenIndex = 0;

  // void changeScreen(int index) {
  //   setState(() {
  //     selectedScreenIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => TabManager(),
          ),
        ],
        child: Consumer<TabManager>(
          builder: (context, tabManager, child) {
            return Scaffold(
              appBar: AppBar(
                title: const Text("Gojjo"),
                backgroundColor: Colors.white,
                foregroundColor: Colors.blue[700],
                actions: const [
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(Icons.search),
                  ),
                ],
              ),
              drawer: const AppDrawer(),
              body: IndexedStack(
                index: tabManager.selectedScreenIndex,
                children: screens,
              ),
              bottomNavigationBar: BottomNavigationBar(
                selectedItemColor: Colors.green,
                currentIndex: tabManager.selectedScreenIndex,
                unselectedItemColor: Colors.black,
                onTap: (index) {
                  tabManager.gotoTab(index);
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.post_add_outlined),
                    label: "Post",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.question_answer_outlined),
                    label: "Request",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle),
                    label: "profile",
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
