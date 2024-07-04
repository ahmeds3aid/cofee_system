// import 'package:flutter/material.dart';

// class CustomTable extends StatelessWidget {
//   const CustomTable({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Table(
//       border: TableBorder.all(color: Colors.white30),
//       defaultVerticalAlignment: TableCellVerticalAlignment.middle,
//       children: const [
//         TableRow(

//             decoration: BoxDecoration(
//               color: Color.fromARGB(255, 110, 107, 96),
//             ),
//             children: [
//               TableCell(child: Center(child: Text('order name ',style: TextStyle(color: Colors.white),))),
//               TableCell(child: Center(child: Text('quantity',style: TextStyle(color: Colors.white),))),
//               TableCell(child: Center(child: Text('price',style: TextStyle(color: Colors.white),))),
//             ]),
//         TableRow(children: [
//           TableCell(child: Center(child: Text('tea'))),
//           TableCell(child: Center(child: Text('3'))),
//           TableCell(child: Center(child: Text('15'))),
//         ]),
//       ],
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class CustomTable extends StatelessWidget {
//   const CustomTable({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Table(
//       border: TableBorder.all(color: Colors.white30),
//       defaultVerticalAlignment: TableCellVerticalAlignment.middle,
//       children: const [
//         TableRow(
//           decoration: BoxDecoration(
//             color: Color.fromARGB(255, 110, 107, 96),
//           ),
//           children: [
//             TableCell(
//               child: Center(
//                 child: Text(
//                   'Order Name',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//             TableCell(
//               child: Center(
//                 child: Text(
//                   'Quantity',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//             TableCell(
//               child: Center(
//                 child: Text(
//                   'Price',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class CustomTable extends StatelessWidget {
//   const CustomTable({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Table(
//       border: TableBorder.all(color: Colors.white30),
//       defaultVerticalAlignment: TableCellVerticalAlignment.middle,
//       children: const [
//         TableRow(
//           decoration: BoxDecoration(
//             color: Color.fromARGB(255, 110, 107, 96),
//           ),
//           children: [
//             TableCell(
//               child: Center(
//                 child: Text(
//                   'Order Name',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//             TableCell(
//               child: Center(
//                 child: Text(
//                   'Quantity',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//             TableCell(
//               child: Center(
//                 child: Text(
//                   'Price',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

import 'package:cofee_system/util/colors.dart';
import 'package:flutter/material.dart';

class CustomHeadOfTable extends StatelessWidget {
  const CustomHeadOfTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: AppColors.secondcolor),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(
          decoration: BoxDecoration(
            color: AppColors.secondcolor,
          ),
          children: const [
            TableCell(
              child: Center(
                child: Text(
                  'Order Name',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            TableCell(
              child: Center(
                child: Text(
                  'Quantity',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            TableCell(
              child: Center(
                child: Text(
                  'Price',
                  style: TextStyle(
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
