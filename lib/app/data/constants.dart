import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Constants{
  static String url = "https://businesscpu.com/api/";
  static var  height = Get.mediaQuery.size.height;
  static var width = Get.mediaQuery.size.width;
  static Color primaryColor = Color(0XFF179CFC);
  static Color secondaryColor = Color(0XFF3B767B);
  static Color thirdColor = Color(0XFFF9F9F9);
  static MaterialColor matColor = MaterialColor(0XFF179CFC, {
    50:primaryColor,
    100:primaryColor,
    200:primaryColor,
    300:primaryColor,
    400:primaryColor,
    500:primaryColor,
    600:primaryColor,
    700:primaryColor,
    800:primaryColor,
    900:primaryColor,
  });
}