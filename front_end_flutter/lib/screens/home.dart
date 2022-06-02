import 'package:flutter/material.dart';
import 'package:gojjoapp/models/user_post.dart';
import 'package:gojjoapp/screens/post.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: userPosts.length,
      itemBuilder: (BuildContext context, int index) {
        final userPost = userPosts[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) {
                  return PostDetails();
                },
              ),
            );
          },
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 35.0, vertical: 15.0),
            child: Stack(
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color.fromARGB(255, 7, 156, 255),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(userPost.houseImage)),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    // height: 100,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0)),
                      color: Colors.black.withOpacity(0.6),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Address: ",
                                style: TextStyle(color: Colors.white),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                userPost.street,
                                style: TextStyle(color: Colors.white),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                userPost.subcity,
                                style: TextStyle(color: Colors.white),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                userPost.city,
                                style: TextStyle(color: Colors.white),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "Ethiopia,",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Text(
                                "Price: ",
                                style: TextStyle(color: Colors.white),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                userPost.price,
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) {
                                    return PostDetails();
                                  },
                                ),
                              );
                            },
                            child: const Text("see detail..."),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
