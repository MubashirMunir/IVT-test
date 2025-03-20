import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: mq.width * .01),
      child: Container(
        // height: mq.width * .15,
        // width: mq.width * .35,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(mq.width * .02),
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: mq.width * .01, vertical: mq.height * .01),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: mq.width * .28, left: mq.width * .06),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: mq.width * .025,
                          color: Color.fromARGB(255, 196, 229, 245),
                          width: mq.width * .08,
                          child: Center(
                            child: Text(
                              '5% 0ff',
                              style: TextStyle(
                                fontSize: mq.width * .02, // Scaled font size
                                fontFamily: 'Light',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        SizedBox(
                          height: mq.width * .02,
                          child: Image.asset(
                            'assets/images/divider.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        5.horizontalSpace,
                        Icon(
                          Icons.star,
                          size: mq.width * .02,
                          color: Colors.yellow[700],
                        ),
                        Text(
                          '4.0',
                          style: TextStyle(
                            fontSize: mq.width * .02, // Scaled font size
                            fontFamily: 'Light',
                          ),
                        ),
                        10.horizontalSpace,
                        SizedBox(
                          height: mq.width * .02,
                          child: Image.asset(
                            'assets/images/divider.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        10.horizontalSpace,
                        Text(
                          '12 sold',
                          style: TextStyle(
                            fontSize: mq.width * .02, // Scaled font size
                            fontFamily: 'Light',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: mq.width * .01),
                    child: Row(
                      children: [
                        Text(
                          'Amazon Raining',
                          style: TextStyle(
                              fontSize: mq.width * .025, // Scaled font size
                              fontFamily: 'Helvetica',
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: mq.width * .10,
                        ),
                        Text(
                          '\$ 100',
                          style: TextStyle(
                              fontSize: mq.width * .025, // Scaled font size
                              fontFamily: 'Helvetica',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: mq.width * .01),
                    child: Text(
                      'Forest River',
                      style: TextStyle(
                          fontSize: mq.width * .025, // Scaled font size
                          fontFamily: 'Helvetica',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(mq.width * .02),
                  topRight: Radius.circular(mq.width * .02)),
              child: Image.asset('assets/images/river.jpg',
                  fit: BoxFit.fill,
                  height: mq.width * .29,
                  width: mq.width * .435),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: mq.width * .23, left: mq.width * .35),
              child: InkWell(
                onTap: () {
                  Fluttertoast.showToast(
                      msg: "This is a cart icon",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM_RIGHT);
                },
                child: SvgPicture.asset('assets/images/tokri.svg',
                    height: mq.width * .04),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
