
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyLocaleController extends GetxController {
  Locale initialLang = sharedpref?.getString("lang") == "ar"
      ? const Locale("ar")
      : const Locale("en");
      
        static get sharedpref => null;
  void changelang(String codelang) {
    Locale locale = Locale(codelang);
    sharedpref?.setString("lang", codelang);
    Get.updateLocale(locale);
  }
}
