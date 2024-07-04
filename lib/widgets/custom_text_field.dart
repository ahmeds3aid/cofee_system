// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class CustomTextField extends StatelessWidget {
//   const CustomTextField({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 50,
//       decoration: BoxDecoration(
//         color: const Color.fromARGB(255, 110, 107, 96),
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: TextFormField(
//         keyboardType: TextInputType.number,
//         inputFormatters: [
//           FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d*$')),
//         ],
//         decoration: const InputDecoration(
//           hintText: 'enter number',
//           hintStyle: TextStyle(color: Colors.white),
//           border: InputBorder.none,
//           contentPadding: EdgeInsets.all(12),
//           prefixIcon: Icon(
//             Icons.numbers,
//             color: Colors.grey,
//           ),
//         ),
//       ),
//     );
//   }
// }

// 

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class CustomTextField extends StatelessWidget {
//   final TextEditingController controller;

//   const CustomTextField({
//     super.key,
//     required this.controller,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 50,
//       decoration: BoxDecoration(
//         color: const Color.fromARGB(255, 110, 107, 96),
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: TextFormField(
//         controller: controller,
//         keyboardType: TextInputType.number,
//         inputFormatters: [
//           FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d*$')),
//         ],
//         decoration: const InputDecoration(
//           hintText: 'enter number',
//           hintStyle: TextStyle(color: Colors.white),
//           border: InputBorder.none,
//           contentPadding: EdgeInsets.all(12),
//           prefixIcon: Icon(
//             Icons.numbers,
//             color: Colors.grey,
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class CustomTextField extends StatelessWidget {
//   final TextEditingController controller;

//   const CustomTextField({
//     super.key,
//     required this.controller,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 50,
//       decoration: BoxDecoration(
//         color: const Color.fromARGB(255, 110, 107, 96),
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: TextFormField(
//         controller: controller,
//         keyboardType: TextInputType.number,
//         inputFormatters: [
//           FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d*$')),
//         ],
//         decoration: const InputDecoration(
//           hintText: 'enter number',
//           hintStyle: TextStyle(color: Colors.white),
//           border: InputBorder.none,
//           contentPadding: EdgeInsets.all(12),
//           prefixIcon: Icon(
//             Icons.numbers,
//             color: Colors.grey,
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:cofee_system/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;

  const CustomTextField({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: AppColors.secondcolor,
        borderRadius: BorderRadius.circular(0),
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d*$')),
        ],
        decoration: const InputDecoration(
          hintText: 'enter quantity',
          hintStyle: TextStyle(color: Colors.white),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(12),
          prefixIcon: Icon(
            Icons.numbers,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

