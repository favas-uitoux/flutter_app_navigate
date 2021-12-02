import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Fifth()));
}

class Fifth extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Fifth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listview horizontal'),
        ),
        body:    Align(
          alignment:Alignment.center,
          child: Container(
            height: 100,

            child: ListView(


             children: [

               for( var i=0;i<100;i++)


                   Container(
                     margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                     color: Colors.green,
                     alignment: Alignment.center,

                     height: 50,
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text("$i"),
                     ),
                   ),








             ],
              scrollDirection: Axis.horizontal,




            ),
          ),
        ));

  }



}
