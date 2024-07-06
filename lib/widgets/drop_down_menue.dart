
import 'package:cofee_system/controller/drop_menue_controller.dart';
import 'package:cofee_system/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropDownMenue extends StatelessWidget {
  final DropdownMenuController controller;

  const DropDownMenue({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Padding(
        padding: const EdgeInsets.all(5),
        child: DropdownButtonFormField<String>(
          itemHeight: 50,
          borderRadius: BorderRadius.circular(10),
          focusColor: AppColors.secondcolor,
          padding: const EdgeInsets.only(left: 10),
          decoration: const InputDecoration(
              enabledBorder: InputBorder.none,
              filled: true,
              fillColor: Color.fromARGB(255, 110, 107, 96)),
          value: controller.selectedItem.value,
          items: controller.items.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          iconEnabledColor: Colors.white,
          dropdownColor: AppColors.secondcolor,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
          onChanged: (newValue) {
            controller.selectedItem.value = newValue!;
          },
        ),
      );
    });
  }
}
