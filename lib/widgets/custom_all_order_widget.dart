import 'package:cofee_system/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAllOrderWidget extends StatelessWidget {
  const CustomAllOrderWidget({
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
        children: [
          const Icon(
            Icons.verified_outlined,
            size: 150,
            color: Colors.white,
          ),
          Text('all order'.tr,style: const TextStyle(color: Colors.white,fontSize: 18),)
        ],
      ),
    );
  }
}