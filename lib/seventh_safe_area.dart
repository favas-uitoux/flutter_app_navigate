import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(MaterialApp(home: Seventh()));
}

class Seventh extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Seventh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Network Image'),
        ),
        body:
        const SafeArea(
          top: true,
            bottom: true,
            left: true,
            right: true,
            child: Image(image: NetworkImage("http://milantex.in/zpa/images/images/159.jpeg"),))


    );

  }



}
