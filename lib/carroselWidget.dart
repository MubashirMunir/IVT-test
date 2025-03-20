// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:testone/Widgets/text12.dart';
// import 'package:testone/Widgets/text20.dart';

// class CarouselWithDots extends StatefulWidget {
//   @override
//   _CarouselWithDotsState createState() => _CarouselWithDotsState();
// }

// class _CarouselWithDotsState extends State<CarouselWithDots> {
//   int _currentIndex = 0; // To track the active page index
//   final List<String> imgList = [
//     'assets/images/Poster1.svg', // Sample image for carousel
//     'assets/images/Poster1.svg', // Repeat for demonstration
//     'assets/images/Poster1.svg', // Repeat for demonstration
//   ];

//   @override
//   Widget build(BuildContext context) {
//     var mq = MediaQuery.of(context).size;

//     return Column(
//       mainAxisAlignment:
//           MainAxisAlignment.center, // This ensures centering vertically
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         CarouselSlider(
//           items: imgList
//               .map((item) => Stack(
//                     children: [
//                       SizedBox(
//                         height: (mq.width * 0.90) / 3,
//                         width: mq.width * 0.97,
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(mq.width * .02),
//                           child: SvgPicture.asset(
//                             'assets/images/Poster1.svg',
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(
//                             horizontal: mq.width * .08,
//                             vertical: mq.width * .05), // Scaled padding
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text16(
//                               title: 'PHOTOGRAPHER ',
//                               color: Colors.white,
//                             ),
//                             Text12(
//                                 color: Colors.white,
//                                 title: 'Make your memories last'),
//                             SizedBox(
//                               height: mq.width * .025,
//                             ),
//                             Container(
//                               height: mq.width * .0535,
//                               width: mq.width * .2,
//                               decoration: BoxDecoration(
//                                 color: Colors.yellow,
//                                 borderRadius:
//                                     BorderRadius.circular(mq.width * .04),
//                               ),
//                               child: Center(
//                                 child: Text(
//                                   'Book Now',
//                                   style: TextStyle(
//                                     fontSize: mq.width * .03,
//                                     color: Colors.black,
//                                     fontFamily: 'Helvetica',
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ))
//               .toList(),
//           options: CarouselOptions(
//             viewportFraction: 1,
//             height: (mq.width * 0.9) / 3,
//             autoPlay: true,
//             enlargeCenterPage: true,
//             enableInfiniteScroll: true,
//             onPageChanged: (index, reason) {
//               setState(() {
//                 _currentIndex = index;
//               });
//             },
//           ),
//         ),
//         SizedBox(height: mq.width * .009),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: imgList.asMap().entries.map((entry) {
//             return GestureDetector(
//               onTap: () => setState(() {
//                 _currentIndex = entry.key; // Tap to change carousel
//               }),
//               child: Container(
//                 margin:
//                     EdgeInsets.symmetric(horizontal: 4.0.w), // Scaled margin
//                 width: _currentIndex == entry.key
//                     ? mq.width * .01
//                     : mq.width * .007, // Scaled width
//                 height: _currentIndex == entry.key ? 10.0.h : 8.0.h,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: _currentIndex == entry.key ? Colors.blue : Colors.grey,
//                 ),
//               ),
//             );
//           }).toList(),
//         ),
//       ],
//     );
//   }
// }
