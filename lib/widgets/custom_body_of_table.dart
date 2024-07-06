import 'package:cofee_system/controller/new_order_controller.dart';
import 'package:flutter/material.dart';

class CustomBodyOfTable extends StatelessWidget {
  const CustomBodyOfTable({
    super.key,
    required this.order,
  });

  final Order order;

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: const Color.fromARGB(255, 202, 181, 181)),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(
          children: [
            TableCell(
              child: Center(
                child: Text(
                  order.name,
                  style: const TextStyle(
                      color: Colors.white,
                      ),
                ),
              ),
            ),
            TableCell(
              child: Center(
                child: Text(
                  order.quantity,
                  style: const TextStyle(
                      color: Colors.white,
                     ),
                ),
              ),
            ),
            TableCell(
              child: Center(
                child: Text(
                  order.totalPrice,
                  style: const TextStyle(
                      color: Colors.white,
                      ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}