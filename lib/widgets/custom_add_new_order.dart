import 'package:cofee_system/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAddNewOrder extends StatelessWidget {
  const CustomAddNewOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.secondcolor,
      ),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.add,
            size: 150,
            color: Colors.white,
          ),
          Text("add new order".tr,style: const TextStyle(color: Colors.white,fontSize: 18),)
        ],
      ),
    );
  }
}