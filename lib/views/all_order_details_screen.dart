// import 'package:cofee_system/widgets/custom_table.dart';
// import 'package:flutter/material.dart';

// class AllOrderDetails extends StatelessWidget {
//   const AllOrderDetails({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       backgroundColor: Colors.blueGrey,
//       body: Column(
//         children: [
//           SizedBox(
//             height: 60,
//           ),
//           CustomTable(),
//         ],
//       ),
//     );
//   }
// }

// import 'package:cofee_system/controller/new_order_controller.dart';
// import 'package:cofee_system/widgets/custom_table.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class AllOrderDetails extends StatelessWidget {
//   const AllOrderDetails({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final OrderController orderController = Get.find();

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blueGrey,
//       ),
//       backgroundColor: Colors.blueGrey,
//       body: Column(
//         children: [
//           const SizedBox(
//             height: 60,
//           ),
//           CustomTable(),
//           Obx(() {
//             return Expanded(
//               child: ListView.builder(
//                 itemCount: orderController.orders.length,
//                 itemBuilder: (context, index) {
//                   final order = orderController.orders[index];
//                   return Table(
//                     border: TableBorder.all(color: Colors.white30),
//                     defaultVerticalAlignment: TableCellVerticalAlignment.middle,
//                     children: [
//                       TableRow(
//                         children: [
//                           TableCell(
//                             child: Center(
//                               child: Text(order.quantity),
//                             ),
//                           ),
//                           TableCell(
//                             child: Center(
//                               child: Text(order.price),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   );
//                 },
//               ),
//             );
//           }),
//         ],
//       ),
//     );
//   }
// }

// import 'package:cofee_system/controller/new_order_controller.dart';
// import 'package:cofee_system/widgets/custom_table.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class AllOrderDetails extends StatelessWidget {
//   const AllOrderDetails({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final OrderController orderController = Get.find();

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blueGrey,
//       ),
//       backgroundColor: Colors.blueGrey,
//       body: Column(
//         children: [
//           const SizedBox(
//             height: 60,
//           ),
//           const CustomTable(),
//           Obx(() {
//             return Expanded(
//               child: ListView.builder(
//                 itemCount: orderController.orders.length,
//                 itemBuilder: (context, index) {
//                   final order = orderController.orders[index];
//                   return Table(
//                     border: TableBorder.all(color: Colors.white30),
//                     defaultVerticalAlignment: TableCellVerticalAlignment.middle,
//                     children: [
//                       TableRow(
//                         children: [
//                           TableCell(
//                             child: Center(
//                               child: Text(order.quantity),
//                             ),
//                           ),
//                           TableCell(
//                             child: Center(
//                               child: Text(order.price),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   );
//                 },
//               ),
//             );
//           }),
//         ],
//       ),
//     );
//   }
// }

// import 'package:cofee_system/controller/new_order_controller.dart';
// import 'package:cofee_system/widgets/custom_table.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class AllOrderDetails extends StatelessWidget {
//   const AllOrderDetails({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final OrderController orderController = Get.find();

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blueGrey,
//       ),
//       backgroundColor: Colors.blueGrey,
//       body: Column(
//         children: [
//           const SizedBox(
//             height: 60,
//           ),
//           const CustomTable(),
//           Obx(() {
//             return Expanded(
//               child: ListView.builder(
//                 itemCount: orderController.orders.length,
//                 itemBuilder: (context, index) {
//                   final order = orderController.orders[index];
//                   return Table(
//                     border: TableBorder.all(color: Colors.white30),
//                     defaultVerticalAlignment: TableCellVerticalAlignment.middle,
//                     children: [
//                       TableRow(
//                         children: [
//                           TableCell(
//                             child: Center(
//                               child: Text(order.name),
//                             ),
//                           ),
//                           TableCell(
//                             child: Center(
//                               child: Text(order.quantity),
//                             ),
//                           ),
//                           TableCell(
//                             child: Center(
//                               child: Text(order.price),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   );
//                 },
//               ),
//             );
//           }),
//         ],
//       ),
//     );
//   }
// }
import 'package:cofee_system/controller/new_order_controller.dart';
import 'package:cofee_system/util/colors.dart';
import 'package:cofee_system/widgets/custom_body_of_table.dart';
import 'package:cofee_system/widgets/custom_head_of_table.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllOrderDetails extends StatelessWidget {
  const AllOrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final OrderController orderController = Get.find();

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
                itemCount: orderController.orders.length,
                itemBuilder: (context, index) {
                  final order = orderController.orders[index];
                  return CustomBodyOfTable(order: order);
                },
              ),
            );
          }),
        ],
      ),
    );
  }
}


