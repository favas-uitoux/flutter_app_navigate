import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_app_navigate/models/model_dashboard_section.dart';

import '../main.dart';

class ApiCalls
{



  getBanner1() async {
    try {

      var url = Uri.parse('http://milantex.in/zpa/show_dashborad_gridview.php');
      var response = await http.post(url, body: {'apikey': '100','call_from':'customer','dash_slno':'12'});
      var res= model_dashboard_section.fromJson(jsonDecode(response.body));


      for( Details row in res.details)
      {
        String img= "http://milantex.in/zpa/images/images/"+row.image+".jpeg";
        list_banners.add(img);

      }

      //   print(list_banners.length);

      playerPointsToAdd.value++;
     // return list_banners;

    } catch (e) {
      print(e);

    }
  }


}