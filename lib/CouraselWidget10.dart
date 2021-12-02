import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_app_navigate/AssetImage.dart';
import 'package:flutter_app_navigate/widgets/custom_toast.dart';


class CouraselWidget extends StatelessWidget {

 List<String> list1 ;

  CouraselWidget(this.list1);


gotonext(BuildContext context)
{
   Navigator.of(context).push( MaterialPageRoute(builder: (context) =>  AssetImage11() ));
}







  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
       onTap : () => Navigator.of(context).push( MaterialPageRoute(builder: (context) =>  AssetImage11() )),

    

           // errorToast(list1[1].toString()),
        child: CarouselSlider(

          options: CarouselOptions(height: 150.0),
          items:
            list1



          .map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(

                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                        color: Colors.amber
                    ),
                 child: Image(image: NetworkImage(i),fit:BoxFit.fill ,),
                 //   child:  Image(image: AssetImage(i))
                    //Text('text $i', style: TextStyle(fontSize: 16.0),)
                );
              },
            );
          }).toList(),
        ),
      );

        ;

  }


}