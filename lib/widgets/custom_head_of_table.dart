

import 'package:cofee_system/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomHeadOfTable extends StatelessWidget {
  const CustomHeadOfTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: Colors.white),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(
          decoration: BoxDecoration(
            color: AppColors.secondcolor,
          ),
          children:  [
            TableCell(
              child: Center(
                child: Text(
                  'Order Name'.tr,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            TableCell(
              child: Center(
                child: Text(
                  'Quantity'.tr,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            TableCell(
              child: Center(
                child: Text(
                  'Price'.tr,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
