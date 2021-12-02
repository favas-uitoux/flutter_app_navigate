
import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:flutter_app_navigate/models/model_dashboard_section.dart';

class ProviderC with ChangeNotifier
{

  String result="Hello";
 List<String> list_banners=List.empty( growable: true);

  List<String> list_banners2=List.empty( growable: true);
  void MakeApiCall(String dash_slno) async
  {



    try {

      var url = Uri.parse('http://milantex.in/zpa/show_dashborad_gridview.php');
      var response = await http.post(url, body: {'apikey': '100','call_from':'customer','dash_slno': dash_slno});
      var res= model_dashboard_section.fromJson(jsonDecode(response.body));


      for( Details row in res.details)
      {
        if(row.image.isNotEmpty)
          {
            List<String> fnames =  new List(100);
            if(row.image.toString().contains(","))
              {
                fnames=  row.image.toString().split(",");
              }
            else
              {
                fnames[0] = row.image.toString();
              }
            String img= "http://milantex.in/zpa/images/images/"+fnames[0]+".jpeg";
            list_banners.add(img);
          }


      }

      result="done api done"+res.details.length.toString();
      notifyListeners();


    } catch (e) {
      print(e);

    }



  }


  void MakeApiCall2(String dash_slno) async
  {



    try {

      var url = Uri.parse('http://milantex.in/zpa/show_dashborad_gridview.php');
      var response = await http.post(url, body: {'apikey': '100','call_from':'customer','dash_slno': dash_slno});
      var res= model_dashboard_section.fromJson(jsonDecode(response.body));


      for( Details row in res.details)
      {
        if(row.image.isNotEmpty)
        {
          List<String> fnames =  new List(100);
          if(row.image.toString().contains(","))
          {
            fnames=  row.image.toString().split(",");
          }
          else
          {
            fnames[0] = row.image.toString();
          }
          String img= "http://milantex.in/zpa/images/images/"+fnames[0]+".jpeg";
          list_banners2.add(img);
        }


      }

      result="done api done"+res.details.length.toString();
      notifyListeners();


    } catch (e) {
      print(e);

    }



  }



}
