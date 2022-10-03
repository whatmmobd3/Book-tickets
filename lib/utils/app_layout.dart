import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppLayout{
  static getSize(BuildContext context){
    return MediaQuery.of(context).size;
  }

  static getScreenHeight(){
    return Get.height;
  }

  static getScreenWidth(){
    return Get.width;
  }

  static getHeight(double x){
    double y = getScreenHeight() / x ;
    return getScreenHeight() / y;
  }

  static getWidth(double x){
    double y = getScreenWidth() / x ;
    return getScreenWidth() / y;
  }
}