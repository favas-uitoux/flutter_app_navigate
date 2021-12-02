import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(MaterialApp(home: Sixth()));
}

class Sixth extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Sixth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Network Image'),
        ),
        body:
        Image(image: NetworkImage("http://milantex.in/zpa/images/images/159.jpeg"),)


    );

  }



}
