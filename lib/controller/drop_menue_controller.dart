// import 'package:get/get_state_manager/src/simple/get_controllers.dart';

// class DropdownMenuController extends GetxController {
//   String _selectedValue = 'Espresso';
//   List<String> options = [
//     'Espresso',
//     'Cappuccino',
//     'Latte',
//     'Americano',
//     'Mocha',
//     'Flat White',
//     'Cold Brew',
//     'French Press',
//   ];

//   void selectOption(String value) {
//     _selectedValue = value;
//     update();
//   }

//   String get selectedValue => _selectedValue;
// }

// import 'package:get/get.dart';

// class DropdownMenuController extends GetxController {
//   var selectedItem = ''.obs;
//   var items = [
//     'Espresso',
//     'Cappuccino',
//     'Latte',
//     'Americano',
//     'Mocha',
//     'Flat White',
//     'Cold Brew',
//     'French Press',
//   ].obs;

//   DropdownMenuController() {
//     if (items.isNotEmpty) {
//       selectedItem.value = items.first;
//     }
//   }
// }


import 'package:get/get.dart';

class DropdownMenuController extends GetxController {
  var selectedItem = ''.obs;
  var items = [
    'Espresso',
    'Cappuccino',
    'Latte',
    'Americano',
    'Mocha',
    'Flat White',
    'Cold Brew',
    'French Press',
  ].obs;

  var prices = {
    'Espresso': 5,
    'Cappuccino': 10,
    'Latte': 20,
    'Americano': 30,
    'Mocha': 10,
    'Flat White': 15,
    'Cold Brew': 20,
    'French Press': 50,
  };

  DropdownMenuController() {
    if (items.isNotEmpty) {
      selectedItem.value = items.first;
    }
  }

  int getPrice() {
    return prices[selectedItem.value] ?? 0;
  }
}

