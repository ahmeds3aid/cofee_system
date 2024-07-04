import 'package:cofee_system/util/colors.dart';
import 'package:flutter/material.dart';

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
      child: const Column(
        children: [
          Icon(
            Icons.verified_outlined,
            size: 150,
            color: Colors.white,
          ),
          Text('all order',style: TextStyle(color: Colors.white,fontSize: 18),)
        ],
      ),
    );
  }
}