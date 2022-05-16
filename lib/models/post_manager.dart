import 'package:flutter/cupertino.dart';
import 'package:gojjoapp/models/user_post.dart';

class PostManager extends ChangeNotifier {
  final _userPosts = <Post>[];

  List<Post> get userPosts => List.unmodifiable(_userPosts);

  void deletePost(int index) {
    _userPosts.removeAt(index);
    notifyListeners();
  }

  void addItem(Post item) {
    _userPosts.add(item);
    notifyListeners();
  }

  void addPost(Post item) {
    _userPosts.add(item);
    notifyListeners();
  }
}
