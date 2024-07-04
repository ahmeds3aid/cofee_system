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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      getPages: [
        GetPage(
          name: '/home',
          page: () => const HomeScreen(),
        ),
        GetPage(
          name: '/new order',
          page: () => AddNewOrder(),
        )
      ],
    );
  }
}
