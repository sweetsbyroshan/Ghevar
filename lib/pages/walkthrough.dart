import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WalkThroughPage extends StatefulWidget {
  @override
  _WalkThroughPageState createState() => _WalkThroughPageState();
}

class _WalkThroughPageState extends State<WalkThroughPage> {
  List<String> title = [
    'Browse & Order All Products \nat Any Time',
    '7/24\nFastest & Safest Delivery',
    'You Can Order Ant Time\nfrom Online Market',
    'You Can Pay Quickly with\nQr Code',
  ];

  List<String> assets = [
    'assets/i1.png',
    'assets/i4.png',
    'assets/i5.png',
    'assets/i6.png',
  ];

  var cntrl =
      PageController(keepPage: true, initialPage: 0, viewportFraction: 1.0);

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              Flexible(
                fit: FlexFit.tight,
                flex: 8,
                child: PageView.builder(
                    onPageChanged: (i) {
                      setState(() {
                        index = i;
                      });
                    },
                    itemCount: assets.length,
                    itemBuilder: (context, i) {
                      return Container(
                        margin: EdgeInsets.only(top: 40, left: 4, right: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 1,
                              child: Text(
                                title[i],
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins().copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color(0xFF2B2A2A)),
                              ),
                            ),
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 5,
                              child: Image.asset(
                                assets[i],
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 3,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      DotsIndicator(
                        dotsCount: assets.length,
                        decorator: DotsDecorator(
                          size: Size.square(9.0),
                          activeSize: Size(30.0, 9.0),
                          activeShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Color(0xFFD4D4D4),
                          activeColor: Color(0xFFE04428),
                        ),
                        position: index.toDouble(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlatButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'login');
                              },
                              child: Text('SKIP',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xFF2B2A2A),
                                      fontSize: 15))),
                          ButtonTheme(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            child: FlatButton(
                                color: Color(0xFFE04428),
                                onPressed: () {
                                  Navigator.pushNamed(context, 'login');
                                },
                                child: Text('Get Started',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white,
                                        fontSize: 16))),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
