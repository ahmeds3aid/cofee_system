// import 'package:cofee_system/controller/drop_menue_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get_state_manager/src/simple/get_state.dart';

// class DropDownMenue extends StatelessWidget {
//   const DropDownMenue({
//     super.key,
//     required this.controller,
//   });

//   final DropdownMenuController controller;

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<DropdownMenuController>(
//       builder: (_) => DropdownButtonFormField<String>(
//         itemHeight: 50,
//          borderRadius: BorderRadius.circular(10),
//         focusColor: const Color.fromARGB(255, 110, 107, 96),
//         padding: const EdgeInsets.only(left: 10),
//         decoration: const InputDecoration(
//             enabledBorder: InputBorder.none,
//             filled: true,
//             fillColor: Color.fromARGB(255, 110, 107, 96)),
//         hint: const Text('Choose your order'), // Add the hint text
//         value: controller.selectedValue.isNotEmpty
//             ? controller.selectedValue
//             : null,
//         onChanged: (newValue) {
//           controller.selectOption(newValue!);
//         },
//         items: controller.options.map<DropdownMenuItem<String>>((String value) {
//           return DropdownMenuItem<String>(
//             value: value,
//             child: Text(value),
//           );
//         }).toList(),

//         isExpanded: false,
//         iconEnabledColor: Colors.white,
//         dropdownColor: const Color.fromARGB(255, 110, 107, 96),
//         style: const TextStyle(
//           color: Colors.white,
//           fontSize: 16,
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:cofee_system/controller/drop_menue_controller.dart';

// class DropDownMenue extends StatelessWidget {
//   final DropdownMenuController controller;

//   const DropDownMenue({super.key, required this.controller});

//   @override
//   Widget build(BuildContext context) {
//     return Obx(() {
//       return Padding(
//         padding: const EdgeInsets.all(5.0),
//         child: DropdownButtonFormField<String>(
//           itemHeight: 50,
//            borderRadius: BorderRadius.circular(10),
//           focusColor: const Color.fromARGB(255, 110, 107, 96),
//           padding: const EdgeInsets.only(left: 10),
//           decoration: const InputDecoration(
//               enabledBorder: InputBorder.none,
//               filled: true,
//               fillColor: Color.fromARGB(255, 110, 107, 96)),

//           value: controller.selectedItem.value,
//           items: controller.items.map((String item) {
//             return DropdownMenuItem<String>(
//               value: item,
//               child: Text(item),
//             );
//           }).toList(),
//           iconEnabledColor: Colors.white,
//           dropdownColor: const Color.fromARGB(255, 110, 107, 96),
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 16,),
//           onChanged: (String? newValue) {
//             controller.selectedItem.value = newValue!;

//           },
//         ),
//       );
//     });
//   }
// }

// import 'package:cofee_system/controller/drop_menue_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class DropDownMenue extends StatelessWidget {
//   final DropdownMenuController controller;

//   DropDownMenue({required this.controller});

//   @override
//   Widget build(BuildContext context) {
//     return Obx(() {
//       return Padding(
//         padding: const EdgeInsets.all(5),
//         child: DropdownButtonFormField<String>(
//            itemHeight: 50,
//              borderRadius: BorderRadius.circular(10),
//             focusColor: const Color.fromARGB(255, 110, 107, 96),
//             padding: const EdgeInsets.only(left: 10),
//             decoration: const InputDecoration(
//                 enabledBorder: InputBorder.none,
//                 filled: true,
//                 fillColor: Color.fromARGB(255, 110, 107, 96)),
//           value: controller.selectedItem.value,
//           items: controller.items.map((String value) {
//             return DropdownMenuItem<String>(
//               value: value,
//               child: Text(value),
//             );
//           }).toList(),
//            iconEnabledColor: Colors.white,
//           dropdownColor: const Color.fromARGB(255, 110, 107, 96),
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 16,),
//           onChanged: (newValue) {
//             controller.selectedItem.value = newValue!;
//           },
//         ),
//       );
//     });
//   }
// }

// import 'package:cofee_system/controller/drop_menue_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class DropDownMenue extends StatelessWidget {
//   final DropdownMenuController controller;

//   DropDownMenue({required this.controller});

//   @override
//   Widget build(BuildContext context) {
//     return Obx(() {
//       return Padding(
//         padding: const EdgeInsets.all(5),
//         child: DropdownButtonFormField<String>(
//                      itemHeight: 50,
//                borderRadius: BorderRadius.circular(10),
//               focusColor: const Color.fromARGB(255, 110, 107, 96),
//               padding: const EdgeInsets.only(left: 10),
//               decoration: const InputDecoration(
//                   enabledBorder: InputBorder.none,
//                   filled: true,
//                   fillColor: Color.fromARGB(255, 110, 107, 96)),
//           value: controller.selectedItem.value,
//           items: controller.items.map((String value) {
//             return DropdownMenuItem<String>(
//               value: value,
//               child: Text(value),
//             );
//           }).toList(),
//                      iconEnabledColor: Colors.white,
//             dropdownColor: const Color.fromARGB(255, 110, 107, 96),
//             style: const TextStyle(
//               color: Colors.white,
//               fontSize: 16,),
//           onChanged: (newValue) {
//             controller.selectedItem.value = newValue!;
//           },
//         ),
//       );
//     });
//   }
// }
import 'package:cofee_system/controller/drop_menue_controller.dart';
import 'package:cofee_system/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropDownMenue extends StatelessWidget {
  final DropdownMenuController controller;

  const DropDownMenue({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Padding(
        padding: const EdgeInsets.all(5),
        child: DropdownButtonFormField<String>(
          itemHeight: 50,
          borderRadius: BorderRadius.circular(10),
          focusColor: AppColors.secondcolor,
          padding: const EdgeInsets.only(left: 10),
          decoration: const InputDecoration(
              enabledBorder: InputBorder.none,
              filled: true,
              fillColor: Color.fromARGB(255, 110, 107, 96)),
          value: controller.selectedItem.value,
          items: controller.items.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          iconEnabledColor: Colors.white,
          dropdownColor: AppColors.secondcolor,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
          onChanged: (newValue) {
            controller.selectedItem.value = newValue!;
          },
        ),
      );
    });
  }
}
