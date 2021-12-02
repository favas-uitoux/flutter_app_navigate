import 'package:flutter/material.dart';


class AudioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      child:  Row(
        children:  [
          IconButton(icon: Icon(Icons.play_arrow), onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('hgdfkjhdgskfjghsdjfk')));
          },),
          Text('00:37'),
           Slider(value: 0, onChanged: (double value) {  },),
          Text('01:15'),
        ],
      ),
    );
  }
}