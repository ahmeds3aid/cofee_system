import 'package:cofee_system/locale/locale.dart';
import 'package:cofee_system/locale/locale_controller.dart';
import 'package:cofee_system/views/add_new_order_screen.dart';
import 'package:cofee_system/views/home_screen.dart';
import 'package:cofee_system/views/splach_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const CofeeSystem());
}

class CofeeSystem extends StatelessWidget {
  const CofeeSystem({super.key});
  @override
  Widget build(BuildContext context) {
    MyLocaleController controller= Get.put(MyLocaleController());
        MyLocaleController controllerlang = Get.find();

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: controller.initialLang,
      translations: MyLocale(),
      home: const SplashScreen(),
      getPages: [
        GetPage(
          name: '/home',
          page: () =>  HomeScreen(controllerlang: controllerlang,),
        ),
        GetPage(
          name: '/new order',
          page: () => AddNewOrder(),
        )
      ],
    );
  }
}
