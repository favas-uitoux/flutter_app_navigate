import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_navigate/CouraselWidget10.dart';
import 'package:flutter_app_navigate/provider/provider.dart';
import 'package:provider/provider.dart';





class Dashboard extends StatefulWidget
{

  @override
  MyAppState createState() => MyAppState();

}



class MyAppState extends State<Dashboard>
{



  @override
  Widget build(BuildContext context) {


for(int i=0;i<2;i++)
  {
    if(i==0)
      {
        Provider.of<ProviderC>(context,listen: false).MakeApiCall("'12'");
      }
    else{
      Provider.of<ProviderC>(context,listen: false).MakeApiCall2("'11'");
    }

  }

return ChangeNotifierProvider(
  create: (context) => ProviderC(),
  child:   Column(
    children: [
      CouraselWidget(Provider.of<ProviderC>(context,listen: true).list_banners),
      CouraselWidget(Provider.of<ProviderC>(context,listen: true).list_banners2),
    //  Text(Provider.of<ProviderC>(context,listen: true).result),
    //  TextButton(onPressed: (){ Provider.of<ProviderC>(context,listen: false).MakeApiCall() ; }, child: Text('Press Here'))
    ],

  ),
);

  }


}
