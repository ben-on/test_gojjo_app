import 'package:flutter/material.dart';
import 'package:gojjoapp/models/user_post.dart';
import 'package:uuid/uuid.dart';

class PostForm extends StatefulWidget {
  final Function(Post) onCreate;
  // final Function(Post) onUpdate;
  // final bool isUpdating;
  // final Post originalItem;

  const PostForm({
    Key? key,
    required this.onCreate,
    // required this.originalItem,
    // required this.onUpdate,
  }) :
        // isUpdating = (originalItem != null),
        super(key: key);

  @override
  State<PostForm> createState() => _PostFormState();
}

class _PostFormState extends State<PostForm> {
  final _cityController = TextEditingController();
  final _streetController = TextEditingController();
  final _subcityController = TextEditingController();
  final _priceController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  String _city = '';
  String _subcity = '';
  String _street = '';
  String _price = '';
  String _description = '';
  String _phone = '';
  String _email = '';

  @override
  void initState() {
    // final originalItem = widget.originalItem;
    // if (originalItem != null) {
    //   _cityController.text = originalItem.city;
    //   _subcityController.text = originalItem.subcity;
    //   _streetController.text = originalItem.street;
    //   _priceController.text = originalItem.city;
    //   _descriptionController.text = originalItem.description;
    //   _phoneController.text = originalItem.phone;
    //   _emailController.text = originalItem.email;
    // }
    _cityController.addListener(() {
      setState(() {
        _city = _cityController.text;
      });
    });
    _subcityController.addListener(() {
      setState(() {
        _subcity = _subcityController.text;
      });
    });
    _streetController.addListener(() {
      setState(() {
        _street = _streetController.text;
      });
    });
    _descriptionController.addListener(() {
      setState(() {
        _description = _descriptionController.text;
      });
    });
    _priceController.addListener(() {
      setState(() {
        _price = _priceController.text;
      });
    });
    _phoneController.addListener(() {
      setState(() {
        _phone = _phoneController.text;
      });
    });
    _emailController.addListener(() {
      setState(() {
        _email = _emailController.text;
      });
    });

    // _priceController.addListener(() {
    //   _printLatestValue();
    // });

    super.initState();
  }

  @override
  void dispose() {
    _cityController.dispose();
    _subcityController.dispose();
    _streetController.dispose();
    _descriptionController.dispose();
    _priceController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  // void _printLatestValue() {
  //   print('Second text field: ${_priceController.text}');
  // }

  void _newPostCreated() {
    print("hello");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
        child: Column(
          children: [
            const Text("Upload your posts here!", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 12.0),
            TextFormField(
              controller: _cityController,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'City',
              ),
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              controller: _subcityController,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Sub-City',
              ),
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              controller: _streetController,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Street',
              ),
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              controller: _priceController,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Price',
              ),
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              controller: _descriptionController,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Description',
              ),
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              controller: _phoneController,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Phone',
              ),
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 15.0),
            GestureDetector(
              child: Container(
                width: 150,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(46, 229, 218, 0.94),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                alignment: Alignment.center,
                padding: EdgeInsets.all(15.0),
                child: const Text(
                  "submit",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.1,
                  ),
                ),
              ),
              onTap: () {
                final userPost = Post(
                  id: const Uuid().v1(),
                  city: _cityController.text,
                  subcity: _subcityController.text,
                  street: _streetController.text,
                  price: _priceController.text,
                  description: _descriptionController.text,
                  phone: _phoneController.text,
                  email: _emailController.text,
                  houseImage: "assets/images/houseImage/house1.jpg",
                );
    
                // if (widget.isUpdating) {
                //   widget.onUpdate(userPost);
                // } else {
                //   widget.onCreate(userPost);
                // }
                print(
                    "New post created with\n $_street, $_subcity, $_city\n price: $_price \n description: $_description \n phone: $_phone \n Email: $_email\n");
    
                widget.onCreate(userPost);
              },
            ),
          ],
        ),
      ),
    );
  }
}
