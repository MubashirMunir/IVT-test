// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:testone/Widgets/Text19.dart';
// import 'package:testone/Widgets/text12.dart';

// class Sellwidget extends StatelessWidget {
//   const Sellwidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var mq = MediaQuery.of(context).size;
//     var font = mq.width;
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 4),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//             width: mq.width * .572,
//             child: Image.asset(
//               'assets/images/bnda.png',
//               fit: BoxFit.cover,
//             ),
//           ),
//           SizedBox(height: 5.h),
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 width: mq.width * .1,
//                 height: mq.width * .1,
//                 child: Image.asset(
//                   'assets/images/bnda1.png',
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Row(children: [
//                     SizedBox(
//                       width: mq.width * .01,
//                     ),
//                     Text14(
//                       title: 'Ronald Richards',
//                     ),
//                     SizedBox(width: mq.width * .1),
//                     Text12(
//                       color: Colors.black,
//                       title: '4.0',
//                     ),
//                     SizedBox(width: 5),
//                     Icon(
//                       Icons.star,
//                       color: Colors.yellow,
//                       size: mq.width * .04,
//                     ),
//                   ]),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       SizedBox(
//                         width: mq.width * .01,
//                       ),
//                       Text12(
//                         title: 'Photographer',
//                         color: Colors.black,
//                       ),
//                       SizedBox(
//                         width: mq.width * .07,
//                       ),
//                       Text12(
//                         title: '20 Photoshots',
//                         color: Colors.black,
//                       ),
//                     ],
//                   )
//                 ],
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
