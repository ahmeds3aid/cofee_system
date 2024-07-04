// import 'package:get/get.dart';
// import 'package:cofee_system/controller/drop_menue_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:cofee_system/widgets/drop_down_menue.dart';
// import 'package:cofee_system/widgets/custom_text_field.dart';

// class OrderController extends GetxController {
//   var rows = <Widget>[].obs;

//   void addRow() {
//     final controller = DropdownMenuController();
//     rows.add(_buildRow(controller));
//   }

//   Widget _buildRow(DropdownMenuController controller) {
//     return Row(
//       children: [
//         const Expanded(
//           child: CustomTextField(),
//         ),
//         const SizedBox(
//           width: 15,
//         ),
//         Expanded(child: DropDownMenue(controller: controller)),
//       ],
//     );
//   }
// }

// import 'package:get/get.dart';
// import 'package:cofee_system/controller/drop_menue_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:cofee_system/widgets/drop_down_menue.dart';
// import 'package:cofee_system/widgets/custom_text_field.dart';

// class OrderController extends GetxController {
//   var rows = <Widget>[].obs;
//   final List<TextEditingController> textControllers = [];

//   @override
//   void onInit() {
//     super.onInit();
//     addRow(); // Add an initial row when the controller is initialized
//   }

//   void addRow() {
//     final textController = TextEditingController();
//     final dropController = DropdownMenuController();
//     textControllers.add(textController);
//     rows.add(_buildRow(textController, dropController));
//   }

//   Widget _buildRow(TextEditingController textController, DropdownMenuController dropController) {
//     return Row(
//       children: [
//         Expanded(
//           child: CustomTextField(controller: textController),
//         ),
//         const SizedBox(
//           width: 15,
//         ),
//         Expanded(child: DropDownMenue(controller: dropController)),
//       ],
//     );
//   }

//   bool validateInput() {
//     for (var controller in textControllers) {
//       if (controller.text.isEmpty || double.tryParse(controller.text) == null) {
//         return false;
//       }
//     }
//     return true;
//   }
// }

// import 'package:cofee_system/controller/drop_menue_controller.dart';
// import 'package:get/get.dart';
// import 'package:flutter/material.dart';
// import 'package:cofee_system/widgets/drop_down_menue.dart';
// import 'package:cofee_system/widgets/custom_text_field.dart';

// class OrderController extends GetxController {
//   var rows = <Widget>[].obs;
//   final List<TextEditingController> textControllers = [];
//   final List<DropdownMenuController> dropdownControllers = [];
//   var orders = <Order>[].obs;

//   @override
//   void onInit() {
//     super.onInit();
//     addRow(); // Add an initial row when the controller is initialized
//   }

//   void addRow() {
//     final textController = TextEditingController();
//     final dropController = DropdownMenuController();
//     textControllers.add(textController);
//     dropdownControllers.add(dropController);
//     rows.add(_buildRow(textController, dropController));
//   }

//   Widget _buildRow(TextEditingController textController, DropdownMenuController dropController) {
//     return Row(
//       key: UniqueKey(), // Ensure each row has a unique key
//       children: [
//         Expanded(
//           child: CustomTextField(controller: textController),
//         ),
//         const SizedBox(
//           width: 15,
//         ),
//         Expanded(child: DropDownMenue(controller: dropController)),
//       ],
//     );
//   }

//   bool validateInput() {
//     for (var controller in textControllers) {
//       if (controller.text.isEmpty || double.tryParse(controller.text) == null) {
//         return false;
//       }
//     }
//     for (var controller in dropdownControllers) {
//       if (controller.selectedItem.value.isEmpty) {
//         return false;
//       }
//     }
//     return true;
//   }

//   void addOrder() {
//     List<Order> newOrders = [];
//     for (int i = 0; i < textControllers.length; i++) {
//       String quantity = textControllers[i].text;
//       String price = dropdownControllers[i].selectedItem.value;
//       newOrders.add(Order(quantity: quantity, price: price));
//     }
//     orders.addAll(newOrders);
//     clearControllers();
//   }

//   void clearControllers() {
//     for (var controller in textControllers) {
//       controller.clear();
//     }
//     for (var controller in dropdownControllers) {
//       controller.selectedItem.value = controller.items.first;
//     }
//   }
// }

// class Order {
//   String quantity;
//   String price;

//   Order({required this.quantity, required this.price});
// }

// import 'package:cofee_system/controller/drop_menue_controller.dart';
// import 'package:get/get.dart';
// import 'package:flutter/material.dart';
// import 'package:cofee_system/widgets/drop_down_menue.dart';
// import 'package:cofee_system/widgets/custom_text_field.dart';

// class OrderController extends GetxController {
//   var rows = <Widget>[].obs;
//   final List<TextEditingController> textControllers = [];
//   final List<DropdownMenuController> dropdownControllers = [];
//   var orders = <Order>[].obs;

//   @override
//   void onInit() {
//     super.onInit();
//     addRow(); // Add an initial row when the controller is initialized
//   }

//   void addRow() {
//     final textController = TextEditingController();
//     final dropController = DropdownMenuController();
//     textControllers.add(textController);
//     dropdownControllers.add(dropController);
//     rows.add(_buildRow(textController, dropController));
//   }

//   Widget _buildRow(TextEditingController textController, DropdownMenuController dropController) {
//     return Row(
//       key: UniqueKey(), // Ensure each row has a unique key
//       children: [
//         Expanded(
//           child: CustomTextField(controller: textController),
//         ),
//         const SizedBox(
//           width: 15,
//         ),
//         Expanded(child: DropDownMenue(controller: dropController)),
//       ],
//     );
//   }

//   bool validateInput() {
//     for (var controller in textControllers) {
//       if (controller.text.isEmpty || double.tryParse(controller.text) == null) {
//         return false;
//       }
//     }
//     for (var controller in dropdownControllers) {
//       if (controller.selectedItem.value.isEmpty) {
//         return false;
//       }
//     }
//     return true;
//   }

//   void addOrder() {
//     List<Order> newOrders = [];
//     for (int i = 0; i < textControllers.length; i++) {
//       String quantity = textControllers[i].text;
//       String name = dropdownControllers[i].selectedItem.value;
//       int price = dropdownControllers[i].getPrice();
//       int totalPrice = int.parse(quantity) * price;
//       newOrders.add(Order(name: name, quantity: quantity, totalPrice: totalPrice.toString()));
//     }
//     orders.addAll(newOrders);
//     clearControllers();
//   }

//   void clearControllers() {
//     for (var controller in textControllers) {
//       controller.clear();
//     }
//     for (var controller in dropdownControllers) {
//       controller.selectedItem.value = controller.items.first;
//     }
//   }
// }


// class Order {
//   String name;
//   String quantity;
//   String totalPrice;

//   Order({required this.name, required this.quantity, required this.totalPrice});
// }

import 'package:cofee_system/controller/drop_menue_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:cofee_system/widgets/drop_down_menue.dart';
import 'package:cofee_system/widgets/custom_text_field.dart';

class OrderController extends GetxController {
  var rows = <Widget>[].obs;
  final List<TextEditingController> textControllers = [];
  final List<DropdownMenuController> dropdownControllers = [];
  var orders = <Order>[].obs;

  @override
  void onInit() {
    super.onInit();
    addRow(); // Add an initial row when the controller is initialized
  }

  void addRow() {
    final textController = TextEditingController();
    final dropController = DropdownMenuController();
    textControllers.add(textController);
    dropdownControllers.add(dropController);
    rows.add(_buildRow(textController, dropController));
  }

  Widget _buildRow(TextEditingController textController, DropdownMenuController dropController) {
    return Row(
      key: UniqueKey(), // Ensure each row has a unique key
      children: [
        Expanded(
          child: CustomTextField(controller: textController),
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(child: DropDownMenue(controller: dropController)),
      ],
    );
  }

  bool validateInput() {
    for (var controller in textControllers) {
      if (controller.text.isEmpty || double.tryParse(controller.text) == null) {
        return false;
      }
    }
    for (var controller in dropdownControllers) {
      if (controller.selectedItem.value.isEmpty) {
        return false;
      }
    }
    return true;
  }

  void addOrder() {
    List<Order> newOrders = [];
    for (int i = 0; i < textControllers.length; i++) {
      String quantity = textControllers[i].text;
      String name = dropdownControllers[i].selectedItem.value;
      int price = dropdownControllers[i].getPrice();
      int totalPrice = int.parse(quantity) * price;
      newOrders.add(Order(name: name, quantity: quantity, totalPrice: totalPrice.toString()));
    }
    orders.addAll(newOrders);
    clearControllers();
    resetRows(); // Reset the rows after adding the order
  }

  void clearControllers() {
    for (var controller in textControllers) {
      controller.clear();
    }
    for (var controller in dropdownControllers) {
      controller.selectedItem.value = controller.items.first;
    }
  }

  void resetRows() {
    rows.clear();
    textControllers.clear();
    dropdownControllers.clear();
    addRow();
  }
}

class Order {
  String name;
  String quantity;
  String totalPrice;

  Order({required this.name, required this.quantity, required this.totalPrice});
}




