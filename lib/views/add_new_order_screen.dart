import 'package:cofee_system/controller/new_order_controller.dart';
import 'package:cofee_system/util/colors.dart';
import 'package:cofee_system/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddNewOrder extends StatelessWidget {
  final OrderController orderController = Get.put(OrderController());

  AddNewOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundcolor,
      ),
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, right: 10, left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() {
                return Column(
                  children: [
                    ...orderController.rows,
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const Spacer(),
                        CustomButton(
                          text: "add more".tr,
                          onPressed: () {
                            if (orderController.validateInput()) {
                              orderController.addRow();
                            } else {
                              Get.snackbar('Error'.tr,
                                  'Please enter quantity of order'.tr,
                                  snackPosition: SnackPosition.TOP,
                                  colorText: Colors.white);
                            }
                          },
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        CustomButton(
                          text: 'add order'.tr,
                          onPressed: () {
                            if (orderController.validateInput()) {
                              orderController.addOrder();
                            } else {
                              Get.snackbar('Error'.tr,
                                  'Please enter valid order details'.tr,
                                  snackPosition: SnackPosition.TOP,
                                  colorText: Colors.white);
                            }
                          },
                        ),
                        const Spacer()
                      ],
                    ),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
