import 'package:flutter/material.dart';

class RequestForm extends StatefulWidget {
  const RequestForm({Key? key}) : super(key: key);

  @override
  State<RequestForm> createState() => _RequestFormState();
}

class _RequestFormState extends State<RequestForm> {
  final _cityController = TextEditingController();
  final _subcityController = TextEditingController();
  final _streetController = TextEditingController();
  final _bedRoomNumberController = TextEditingController();
  final _descriptionController = TextEditingController();
  String _city = "";
  String _subcity = "";
  String _street = "";
  String _bedRoomNumber = "";
  String _description = "";

  void _cityListener() {
    _city = _cityController.text.isEmpty ? "" : _cityController.text;
  }

  void _subcityListener() {
    _subcity = _subcityController.text.isEmpty ? "" : _subcityController.text;
  }

  void _streetListener() {
    _street = _streetController.text.isEmpty ? "" : _streetController.text;
  }

  void _bedRoomNumberListener() {
    _bedRoomNumber = _bedRoomNumberController.text.isEmpty
        ? ""
        : _bedRoomNumberController.text;
  }

  void _descriptionListener() {
    _description =
        _descriptionController.text.isEmpty ? "" : _descriptionController.text;
  }

  _RequestFormState() {
    _cityController.addListener(_cityListener);
    _subcityController.addListener(_subcityListener);
    _streetController.addListener(_streetListener);
    _bedRoomNumberController.addListener(_bedRoomNumberListener);
    _descriptionController.addListener(_descriptionListener);
  }

  void _newRequestSent() {
    print(
      "The request with the below details sent to the server \n Address: $_street, $_subcity, $_city \n Bed Room Number: $_bedRoomNumber \n Description: $_description \n",
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            const Text("Upload your request here!",
                style: TextStyle(fontSize: 20)),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: _cityController,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'City',
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: _subcityController,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Sub-city',
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: _streetController,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Street',
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: _bedRoomNumberController,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Bedroom number',
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: _descriptionController,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Description',
              ),
            ),
            const SizedBox(height: 30.0),
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
              onTap: _newRequestSent,
            ),
          ],
        ),
      ),
    );
  }
}
