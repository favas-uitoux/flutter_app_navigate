
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_app_navigate/DioWidget12.dart';
import 'package:flutter_app_navigate/apiservices/ApiCalls.dart';

import 'package:flutter_app_navigate/eight_individual_widget.dart';
import 'package:flutter_app_navigate/fifth_listview_horizontal.dart';
import 'package:flutter_app_navigate/fourth.dart';
import 'package:flutter_app_navigate/nine_expanded.dart';
import 'package:flutter_app_navigate/provider/provider.dart';
import 'package:flutter_app_navigate/screens/Dashboard.dart';
import 'package:flutter_app_navigate/second.dart';
import 'package:flutter_app_navigate/seventh_safe_area.dart';
import 'package:flutter_app_navigate/sixth_nw_image.dart';
import 'package:flutter_app_navigate/third.dart';
import 'package:flutter_app_navigate/models/model_dashboard_section.dart';


import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'CouraselWidget10.dart';
import 'dart:developer' as developer;

import 'models/model_dashboard_section.dart';



ValueNotifier<int> playerPointsToAdd = ValueNotifier<int>(0);


List<String> list_banners = List.empty( growable: true);
void main() {




  runApp(MaterialApp(
      home: MyApp(),

  ));
}

class MyApp extends StatefulWidget {
  @override

  MyAppState createState() => MyAppState();
}



class MyAppState extends State<MyApp> {

  // List<String> list_banners = [
  //   'http://milantex.in/zpa/images/images/132.jpeg',
  //   'http://milantex.in/zpa/images/images/138.jpeg',
  //
  // ];

 // List<String> list_banners=new List<String>() ;

 // List<String>  list_banners = List<String>(9);
  List<String> list_banners = List.empty( growable: true);
  List<String> list_banners2 = List.empty( growable: true);
  //
  // Future<List<String>> getHttp() async {
  //   try {
  //
  //     var url = Uri.parse('http://milantex.in/zpa/show_dashborad_gridview.php');
  //     var response = await http.post(url, body: {'apikey': '100','call_from':'customer','dash_slno':'12'});
  //     var res= model_dashboard_section.fromJson(jsonDecode(response.body));
  //
  //
  //      for( Details row in res.details)
  //        {
  //          String img= "http://milantex.in/zpa/images/images/"+row.image+".jpeg";
  //          list_banners.add(img);
  //
  //        }
  //  //   print(list_banners.length);
  //     setState(() {
  //      // list_banners;
  //     });
  //       return list_banners;
  //
  //   } catch (e) {
  //     print(e);
  //
  //   }
  // }


  // Future<List<String>> getHttp2() async {
  //   try {
  //
  //     var url = Uri.parse('http://milantex.in/zpa/show_dashborad_gridview.php');
  //     var response = await http.post(url, body: {'apikey': '100','call_from':'customer','dash_slno':'15'});
  //     var res= model_dashboard_section.fromJson(jsonDecode(response.body));
  //
  //
  //     for( Details row in res.details)
  //     {
  //       String img= "http://milantex.in/zpa/images/images/"+row.image+".jpeg";
  //       list_banners2.add(img);
  //
  //     }
  //     //   print(list_banners.length);
  //     setState(() {
  //       // list_banners;
  //     });
  //     return list_banners;
  //
  //   } catch (e) {
  //     print(e);
  //
  //   }
  // }




  @override
  Widget  build(BuildContext context)  {
    // getHttp();
    // getHttp2();

    return ChangeNotifierProvider(
      create: ( context) => ProviderC(),
      child: Scaffold(
          appBar: AppBar(
            title: Text('MANNA SAKEENA'),

          ),
          body:Dashboard()
         // AssetImage11()
         //  Column(children: [
         //    CouraselWidget(list_banners),
         //    CouraselWidget(list_banners2),
         //
         //  ],)

      //  DioWidget()
//         Center(
//           child: AnimatedButton(
//             width: 200,
//             isReverse: true,
//             text: 'SUBMIT',
//             selectedTextColor: Colors.red,
//             transitionType: TransitionType.LEFT_TO_RIGHT,
//             textStyle: const TextStyle(
//                 fontSize: 28,
//                 letterSpacing: 5,
//                 color: Colors.green,
//                 fontWeight: FontWeight.w300),
//             onPress: () {
// f1();
//             // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Bismillah')));
//             //
//             //
//           },
//           ),
//         )
      ),
    );
  }



  f1()
  {

    //print("dfddf");
   // developer.log("log msg");
    // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('hgdfkjhdgskfjghsdjfk')));

    //Navigator.of(context).push( MaterialPageRoute(builder: (context) => DioWidget()));

  }
  


}

