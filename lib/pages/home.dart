import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:goonie/pages/home/order.dart';

import 'home/grocery.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var controllr = PageController(
    initialPage: 0,
    keepPage: true,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonTheme(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: FlatButton(
                          color: Color(0xFFFD8700),
                          child: Row(
                            children: [
                              Icon(
                                Icons.pin_drop_outlined,
                                color: Colors.white,
                                size: 16,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Giriraj Road',
                                style: GoogleFonts.poppins().copyWith(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                      ClipOval(
                        child: Material(
                          color: Colors.red, // button color
                          child: InkWell(
                            splashColor: Colors.red.shade500,
                            onTap: () {
                              Navigator.pushNamed(context, 'profile');
                            },
                            child: SizedBox(
                                width: 36,
                                height: 36,
                                child: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 7,
                fit: FlexFit.tight,
                child: PageView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: controllr,
                  children: [
                    GroceryPage(),
                    Container(),
                    Container(),
                    Container(),
                    OrderPage(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: btmNB(),
    );
  }

  int currentIndex = 0;

  double size = 50;
  btmNB() {
    return Theme(
      data: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: BottomNavigationBar(
          selectedItemColor: Color(0xFFD93F11),
          unselectedItemColor: Color(0xFF949494),
          onTap: (i) {
            print(i);
            if (i == 2)
              Navigator.pushNamed(context, 'purchase');
            else
              setState(() {
                currentIndex = i;
                controllr.animateToPage(currentIndex,
                    duration: Duration(
                      milliseconds: 800,
                    ),
                    curve: Curves.easeInOutQuint);
              });
          },
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.local_grocery_store_outlined),
                label: 'Grocery'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notification_important_outlined),
                label: 'News'),
            BottomNavigationBarItem(
              icon: ClipOval(
                child: Material(
                  color: Colors.red, // button color
                  child: InkWell(
                    splashColor: Colors.red.shade500,
                    onTap: () {
                      Navigator.pushNamed(context, 'purchase');
                    },
                    child: Container(
                        width: size,
                        height: size,
                        child: Icon(
                          Icons.card_travel_outlined,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
              label: '\$200',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline_outlined),
                label: 'Favourite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.wallet_giftcard_outlined), label: 'Order')
          ]),
    );
  }
}
