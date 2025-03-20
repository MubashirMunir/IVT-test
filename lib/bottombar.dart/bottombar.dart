import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    const Page2(),
    const Page3(),
    // const Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Container(
      height: mq.height * .1,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(
              5.0,
              5.0,
            ),
            blurRadius: 5,
            spreadRadius: 0.1,
          ),
          BoxShadow(
            color: Colors.white,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: Column(
                children: [
                  pageIndex == 0
                      ? SvgPicture.asset(
                          'assets/images/home.svg',
                          semanticsLabel: 'My SVG Image',
                          color: Colors.blue,
                          height: 20,
                        )
                      : SvgPicture.asset(
                          'assets/images/home.svg',
                          semanticsLabel: 'My SVG Image',
                          height: mq.width * .01,
                          color: const Color(0xFFADB5BD),
                        ),
                  pageIndex == 0
                      ? Text(
                          'Home',
                          style: TextStyle(
                              fontFamily: 'Light',
                              fontSize: mq.height * .02,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        )
                      : Text(
                          'Home',
                          style: TextStyle(
                              fontFamily: 'Light',
                              fontSize: mq.height * .02,
                              color: const Color(0xFFADB5BD)),
                        )
                ],
              )),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: Column(children: [
              pageIndex == 1
                  ? SvgPicture.asset(
                      'assets/images/briefcase.svg',
                      semanticsLabel: 'My SVG Image',
                      color: Colors.blue,
                      height: 20,
                    )
                  : SvgPicture.asset(
                      'assets/images/briefcase.svg',
                      semanticsLabel: 'My SVG Image',
                      height: 20,
                    ),
              pageIndex == 1
                  ? Text(
                      'Business',
                      style: TextStyle(
                          fontFamily: 'Light',
                          fontSize: mq.height * .02,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    )
                  : Text(
                      'Business',
                      style: TextStyle(
                          fontFamily: 'Light',
                          fontSize: mq.height * .02,
                          color: const Color(0xFFADB5BD)),
                    )
            ]),
          ),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: Column(
                children: [
                  pageIndex == 2
                      ? SvgPicture.asset(
                          'assets/images/cart.svg',
                          semanticsLabel: 'My SVG Image',
                          color: Colors.blue,
                          height: 20,
                        )
                      : SvgPicture.asset(
                          'assets/images/cart.svg',
                          semanticsLabel: 'My SVG Image',
                          height: 20,
                        ),
                  pageIndex == 2
                      ? Text(
                          'Cart',
                          style: TextStyle(
                              fontFamily: 'Light',
                              fontSize: mq.height * .02,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        )
                      : Text(
                          'Cart',
                          style: TextStyle(
                              fontFamily: 'Light',
                              fontSize: mq.height * .02,
                              color: const Color(0xFFADB5BD)),
                        )
                ],
              )),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: Column(
                children: [
                  pageIndex == 3
                      ? SvgPicture.asset(
                          'assets/images/profile.png',
                          semanticsLabel: 'My SVG Image',
                          color: Colors.blue,
                          height: 20,
                        )
                      : SvgPicture.asset(
                          'assets/images/profile.svg',
                          semanticsLabel: 'My SVG Image',
                          height: 20,
                        ),
                  pageIndex == 3
                      ? Text(
                          'Profile',
                          style: TextStyle(
                            fontFamily: 'Light',
                            fontSize: mq.height * .02,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue, // Correct color code
                          ),
                        )
                      : Text('Profile',
                          style: TextStyle(
                            fontFamily: 'Light',
                            fontSize: mq.height * .02,
                            color: const Color(0xFFADB5BD),
                          ))
                ],
              )),
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Birefcase ppage",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Cart page",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
