import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

void main() {
  runApp(MaterialApp(home: Second()));
}

class Second extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MANNA SAKEENA'),
        ),
        body:    Center(
         child:


         FlatButton(onPressed: null, child:  Text('Click here'))

        ));
  }




}
