import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(MaterialApp(home: Fourth()));
}

class Fourth extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Fourth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Janna'),
        ),
        body:    Align(
        alignment: Alignment.center,
          child: Container(
            width: 150,
            child: ListView(


             children: [

               for( var i=0;i<100;i++)

                   Container(
                     color: Colors.green,
                     alignment: Alignment.center,

                     height: 50,
                     child:Text("$i") ,
                   ),








             ],
              scrollDirection: Axis.vertical,




            ),
          ),
        ));

  }



}
