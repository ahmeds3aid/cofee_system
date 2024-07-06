import 'package:cofee_system/locale/locale_controller.dart';
import 'package:cofee_system/util/colors.dart';
import 'package:cofee_system/widgets/custom_button_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key, required this.controllerlang});
  final MyLocaleController controllerlang;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.5,
      backgroundColor: Colors.white54,
      child: DrawerHeader(
          child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomButton(
              text: 'arabic'.tr,
              onPressed: () {
                controllerlang.changelang("ar");
              }),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
              text: 'english'.tr,
              onPressed: () {
                controllerlang.changelang("en");
              })
        ],
      )),
    );
  }
}
