
import 'package:flutter_app_navigate/res/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';


errorToast(String msg){
  Fluttertoast.showToast(
    msg:msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity:ToastGravity.BOTTOM,
    backgroundColor:AppColor.black.withOpacity(0.8),
    textColor: AppColor.white,
  );
}