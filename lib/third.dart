import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(MaterialApp(home: Third()));
}

class Third extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Janna'),
        ),
        body:    Center(
         child:


         FlatButton(onPressed: getHttp, child:  Text('Click here'))

        ));

  }

  void getHttp() async {
    try {
      var response = await Dio().get('http://www.google.com');
      print(response);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('hgdfkjhdgskfjghsdjfk')));

    } catch (e) {
      print(e);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('hgdfkjhdgskfjghsdjfk')));

    }
  }


}
