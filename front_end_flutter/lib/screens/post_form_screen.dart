import 'package:flutter/material.dart';
import 'package:gojjoapp/screens/upload_form.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(child: Icon(Icons.arrow_back_ios)),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            PostForm(
              onCreate: (_) {},
            ),
            //   onUpdate: (_) {}, ),
          ],
        ),
      ),
    );
  }
}
