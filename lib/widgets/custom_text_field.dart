

import 'package:cofee_system/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;

  const CustomTextField({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: AppColors.secondcolor,
        borderRadius: BorderRadius.circular(0),
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d*$')),
        ],
        decoration:  InputDecoration(
          hintText: 'enter quantity'.tr,
          hintStyle: const TextStyle(color: Colors.white),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(12),
          prefixIcon: const Icon(
            Icons.numbers,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

