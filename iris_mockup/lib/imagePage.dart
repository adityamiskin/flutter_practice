import 'package:flutter/material.dart';
import 'homePage.dart';

class ImagePage extends StatefulWidget {
  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  String url = 'https://cutt.ly/RvaNEMO';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(33, 33, 33, 1),
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          height: 400,
          width: double.infinity,
          child: Image.network(url),
        ),
      ),
    );
  }
}
