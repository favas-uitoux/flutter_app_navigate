import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:dio/dio.dart';
import 'widgets/widget1.dart';
void main() {
  runApp(MaterialApp(home: Eight()));
}

class Eight extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Eight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Individual widget'),
        ),
        body:

            Column(
              children: [
                AudioWidget(),
                AudioWidget(),
                AudioWidget(),
              ],

            )


    );










  }



}
