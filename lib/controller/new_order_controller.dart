import 'dart:convert';
import 'package:cofee_system/controller/drop_menue_controller.dart';
import 'package:cofee_system/widgets/custom_text_field.dart';
import 'package:cofee_system/widgets/drop_down_menue.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class OrderController extends GetxController {
  var rows = <Widget>[].obs;
  final List<TextEditingController> textControllers = [];
  final List<DropdownMenuController> dropdownControllers = [];
  var orders = <Order>[].obs;
  SharedPreferences? prefs;

  @override
  void onInit() {
    super.onInit();
    initSharedPreferences();
    addRow(); // Add an initial row when the controller is initialized
  }

  Future<void> initSharedPreferences() async {
    prefs = await SharedPreferences.getInstance();
    loadOrders();
  }

  void addRow() {
    final textController = TextEditingController();
    final dropController = DropdownMenuController();
    textControllers.add(textController);
    dropdownControllers.add(dropController);
    rows.add(_buildRow(textController, dropController));
  }

  Widget _buildRow(TextEditingController textController,
      DropdownMenuController dropController) {
    return Row(
      key: UniqueKey(), // Ensure each row has a unique key
      children: [
        Expanded(
          child: CustomTextField(
            controller: textController,
           
          ),
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
      newOrders.add(Order(
          name: name, quantity: quantity, totalPrice: totalPrice.toString()));
    }
    orders.addAll(newOrders);
    saveOrders();
    clearControllers();
    resetRows(); // Reset the rows after adding the order
  }

  void saveOrders() {
    List<String> orderJsonList =
        orders.map((order) => json.encode(order.toJson())).toList();
    prefs?.setStringList('orders', orderJsonList);
  }

  void loadOrders() {
    List<String>? orderJsonList = prefs?.getStringList('orders');
    if (orderJsonList != null) {
      orders.addAll(orderJsonList
          .map((orderJson) => Order.fromJson(json.decode(orderJson))));
    }
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

  double getTotalPrice() {
    double total = 0;
    for (var order in orders) {
      total += double.parse(order.totalPrice);
    }
    return total;
  }

  void resetData() {
    orders.clear();
    prefs?.remove('orders');
    resetRows();
  }
}

class Order {
  String name;
  String quantity;
  String totalPrice;

  Order({required this.name, required this.quantity, required this.totalPrice});

  Map<String, dynamic> toJson() => {
        'name': name,
        'quantity': quantity,
        'totalPrice': totalPrice,
      };

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      name: json['name'],
      quantity: json['quantity'],
      totalPrice: json['totalPrice'],
    );
  }
}
