import 'package:flutter/material.dart';
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

  static getHeight(double pixels){
    // the code below gets the screen proportions
    double x = getScreenHeight()/pixels;
    return getScreenHeight()/x;
  }

  static getWidth(double pixels){
    // the code below gets the screen proportions
    double x = getScreenWidth()/pixels;
    return getScreenWidth()/x;
  }
}