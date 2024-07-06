
import 'package:cofee_system/controller/new_order_controller.dart';
import 'package:cofee_system/util/colors.dart';
import 'package:cofee_system/widgets/custom_body_of_table.dart';
import 'package:cofee_system/widgets/custom_button_widget.dart';
import 'package:cofee_system/widgets/custom_head_of_table.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllOrderDetails extends StatelessWidget {
  const AllOrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final OrderController orderController = Get.put(OrderController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundcolor,
      ),
      backgroundColor: AppColors.backgroundcolor,
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const CustomHeadOfTable(),
          Obx(() {
            return Expanded(
              child: ListView.builder(
                itemCount: orderController.orders.length +
                    1, // +1 for the total price row
                itemBuilder: (context, index) {
                  if (index == orderController.orders.length) {
                    // Total price row
                    return Table(
                      border: TableBorder.all(color: Colors.white),
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      children: [
                        TableRow(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 110, 107, 96),
                          ),
                          children: [
                             TableCell(
                              child: Center(
                                child: Text(
                                  'Total'.tr,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const TableCell(
                              child: Center(
                                child: Text(
                                  '',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            TableCell(
                              child: Center(
                                child: Text(
                                  orderController
                                      .getTotalPrice()
                                      .toStringAsFixed(2),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  } else {
                    // Order rows
                    final order = orderController.orders[index];
                    return CustomBodyOfTable(order: order);
                  }
                },
              ),
            );
          }),
          SizedBox(
            height: 50,
            child: CustomButton(
                text: 'Reset Data'.tr,
                onPressed: () {
                  orderController.resetData();
                }),
          ),
          const SizedBox(height: 20,)
        ],
      ),
    );
  }
}
