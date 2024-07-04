// import 'package:cofee_system/controller/drop_menue_controller.dart';
// import 'package:cofee_system/widgets/custom_button_widget.dart';
// import 'package:cofee_system/widgets/custom_text_field.dart';
// import 'package:cofee_system/widgets/drop_down_menue.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class AddNewOrder extends StatelessWidget {
//   final controller = Get.put(DropdownMenuController());
//   AddNewOrder({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blueGrey,
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Row(
//             children: [
//               const Expanded(
//                 child: CustomTextField(),
//               ),
//               const SizedBox(
//                 width: 15,
//               ),
//               Expanded(child: DropDownMenue(controller: controller)),
//             ],
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           CustomButton(text: "add more", onPressed: () {})
//         ],
//       ),
//     );
//   }
// }

// import 'package:cofee_system/controller/new_order_controller.dart';
// import 'package:cofee_system/widgets/custom_button_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class AddNewOrder extends StatelessWidget {
//   final OrderController orderController = Get.put(OrderController());

//   AddNewOrder({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blueGrey,
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Obx(() {
//             return Column(
//               children: [
//                 ...orderController.rows,
//                 const SizedBox(height: 20),
//                 CustomButton(
//                   text: "add more",
//                   onPressed: () {
//                     orderController.addRow();
//                   },
//                 ),
//               ],
//             );
//           }),
//         ],
//       ),
//     );
//   }
// }

// import 'package:cofee_system/controller/new_order_controller.dart';
// import 'package:cofee_system/widgets/custom_button_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class AddNewOrder extends StatelessWidget {
//   final OrderController orderController = Get.put(OrderController());

//   AddNewOrder({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blueGrey,
//       ),
//       backgroundColor: Colors.blueGrey,
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 30, right: 10, left: 10),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Obx(() {
//                 return Column(
//                   children: [
//                     ...orderController.rows,
//                     const SizedBox(height: 20),
//                     CustomButton(
//                       text: "add more",
//                       onPressed: () {
//                         if (orderController.validateInput()) {
//                           orderController.addRow();
//                         } else {
//                           Get.snackbar('Error', 'Please enter number of order',
//                               snackPosition: SnackPosition.TOP,
//                               colorText: Colors.white);
//                         }
//                       },
//                     ),
//                   ],
//                 );
//               }),
//               const SizedBox(
//                 height: 30,
//               ),
//               Row(
//                 children: [
//                   const Spacer(),
//                   CustomButton(text: 'add order', onPressed: () {}),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:cofee_system/controller/new_order_controller.dart';
// import 'package:cofee_system/views/all_order_details_screen.dart';
// import 'package:cofee_system/widgets/custom_button_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class AddNewOrder extends StatelessWidget {
//   final OrderController orderController = Get.put(OrderController());

//   AddNewOrder({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blueGrey,
//       ),
//       backgroundColor: Colors.blueGrey,
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 30, right: 10, left: 10),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Obx(() {
//                 return Column(
//                   children: [
//                     ...orderController.rows,
//                     const SizedBox(height: 20),
//                     CustomButton(
//                       text: "add more",
//                       onPressed: () {
//                         if (orderController.validateInput()) {
//                           orderController.addRow();
//                         } else {
//                           Get.snackbar(
//                             'Error',
//                             'Please enter number of order',
//                             snackPosition: SnackPosition.TOP,
//                             colorText: Colors.white,
//                           );
//                         }
//                       },
//                     ),
//                   ],
//                 );
//               }),
//               const SizedBox(
//                 height: 30,
//               ),
//               Row(
//                 children: [
//                   const Spacer(),
//                   CustomButton(
//                     text: 'add order',
//                     onPressed: () {
//                       if (orderController.validateInput()) {
//                         orderController.addOrder();
//                         Get.to(() => const AllOrderDetails());
//                       } else {
//                         Get.snackbar(
//                           'Error',
//                           'Please enter number of order',
//                           snackPosition: SnackPosition.TOP,
//                           colorText: Colors.white,
//                         );
//                       }
//                     },
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:cofee_system/controller/new_order_controller.dart';
// import 'package:cofee_system/widgets/custom_button_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class AddNewOrder extends StatelessWidget {
//   final OrderController orderController = Get.put(OrderController());

//   AddNewOrder({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blueGrey,
//       ),
//       backgroundColor: Colors.blueGrey,
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 30, right: 10, left: 10),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Obx(() {
//                 return Column(
//                   children: [
//                     ...orderController.rows,
//                     const SizedBox(height: 20),
//                     CustomButton(
//                       text: "add more",
//                       onPressed: () {
//                         if (orderController.validateInput()) {
//                           orderController.addRow();
//                         } else {
//                           Get.snackbar(
//                             'Error',
//                             'Please enter number of order',
//                             snackPosition: SnackPosition.TOP,
//                             colorText: Colors.white,
//                           );
//                         }
//                       },
//                     ),
//                   ],
//                 );
//               }),
//               const SizedBox(
//                 height: 30,
//               ),
//               Row(
//                 children: [
//                   const Spacer(),
//                   CustomButton(
//                     text: 'add order',
//                     onPressed: () {
//                       if (orderController.validateInput()) {
//                         orderController.addOrder();
//                         // Get.to(() => const AllOrderDetails());
//                       } else {
//                         Get.snackbar(
//                           'Error',
//                           'Please enter number of order',
//                           snackPosition: SnackPosition.TOP,
//                           colorText: Colors.white,
//                         );
//                       }
//                     },
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

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
                          text: "add more",
                          onPressed: () {
                            if (orderController.validateInput()) {
                              orderController.addRow();
                            } else {
                              Get.snackbar(
                                  'Error', 'Please enter number of order',
                                  snackPosition: SnackPosition.TOP,
                                  colorText: Colors.white);
                            }
                          },
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        CustomButton(
                          text: 'add order',
                          onPressed: () {
                            if (orderController.validateInput()) {
                              orderController.addOrder();
                            } else {
                              Get.snackbar(
                                  'Error', 'Please enter valid order details',
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
