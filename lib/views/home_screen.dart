import 'package:cofee_system/util/colors.dart';
import 'package:cofee_system/views/add_new_order_screen.dart';
import 'package:cofee_system/views/all_order_details_screen.dart';
import 'package:cofee_system/widgets/custom_add_new_order.dart';
import 'package:cofee_system/widgets/custom_all_order_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  Get.to(const AllOrderDetails());
                },
                child: const CustomAllOrderWidget()),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
                onTap: () {
                  Get.to(AddNewOrder());
                },
                child: const CustomAddNewOrder()),
          ],
        ),
      ),
    );
  }
}
