import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_app_navigate/models/m1.dart';
import 'package:flutter_app_navigate/models/model_banner.dart';
import 'package:flutter_app_navigate/models/model_dashboard_section.dart';
import 'dart:developer' as developer;


import 'package:http/http.dart' as http;



class DioWidget extends StatelessWidget {






  void getHttp() async {
    try {


      // var url = Uri.parse('http://milantex.in/zpa/read_dasboard_category_customer.php');
      // var response = await http.post(url, body: {'apikey': '100'});
      //
      //
      // var res= model_dashboard.fromJson(jsonDecode(response.body));
      // for (Details row in res.details)
      //   {
      //
      //     if(row.displayName=="")
      //       {
      //
      //       }
      //
      //   }


      var url = Uri.parse('http://milantex.in/zpa/show_dashborad_gridview.php');
      var response = await http.post(url, body: {'apikey': '100','call_from':'customer','dash_slno':'12'});
      var res= model_dashboard_section.fromJson(jsonDecode(response.body));


      print(res);





    } catch (e) {
      print(e);

    }
  }




  @override
  Widget build(BuildContext context) {
   var res= getHttp();
    return
        Center(child: Text('ok'),);




  }
}