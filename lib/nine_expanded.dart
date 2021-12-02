import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:dio/dio.dart';
import 'widgets/widget1.dart';
// void main() {
//   runApp(MaterialApp(home: Nine( data: 'dfdf')));
// }

class Nine extends StatefulWidget {

final String data;


Nine(this.data);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Nine> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(
          title: Text('Expanded'),
        ),
        body:

        Row(
          children: [

            Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),


          ],





        ),





            );













  }




}
