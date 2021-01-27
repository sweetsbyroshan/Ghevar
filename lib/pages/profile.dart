import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  List<String> items = [
    'Manage Address',
    'Payment',
    'Favourites',
    'Terms of Use',
    'Privacy Policy',
    'Fees & Payment Policy',
  ];
  List<String> itemsr = [
    'orderstatus',
    'payment',
    '/',
    '/',
    '/',
    '/',
  ];
  List<IconData> icons = [
    Icons.location_on_outlined,
    Icons.money_outlined,
    Icons.favorite_outline,
    Icons.bookmark_border_outlined,
    Icons.bookmark_border_outlined,
    Icons.bookmark_border_outlined,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB23F56),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipOval(
                  child: Material(
                elevation: 0,
                color: Colors.transparent, // button color
                child: InkWell(
                  splashColor: Colors.white,
                  onTap: () => Navigator.pop(context),
                  child: SizedBox(
                      width: 36,
                      height: 36,
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                ),
              )),
              Flexible(
                flex: 15,
                fit: FlexFit.tight,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipOval(
                      child: Material(
                        elevation: 0,
                        color: Colors.white, // button color
                        child: InkWell(
                          splashColor: Colors.red.shade500,
                          onTap: null,
                          child: SizedBox(
                              width: 60,
                              height: 60,
                              child: Icon(
                                Icons.person,
                                size: 30,
                                color: Colors.red,
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('George Lucas',
                              style: GoogleFonts.poppins().copyWith(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500)),
                          Text('g.lucas@gmail.com',
                              style: GoogleFonts.poppins().copyWith(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 70,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          flex: 4,
                          child: ListView.separated(
                            primary: false,
                            separatorBuilder: (context, index) {
                              return Divider();
                            },
                            itemCount: items.length,
                            itemBuilder: (context, index) => ListTile(
                              onTap: () {
                                Navigator.pushNamed(context, itemsr[index]);
                              },
                              leading: Icon(
                                icons[index],
                                size: 18,
                                color: Color(0xFFB23F56),
                              ),
                              trailing: Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.black,
                                size: 18,
                              ),
                              title: Text(
                                items[index],
                                style: GoogleFonts.poppins().copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                            flex: 2,
                            child: FlatButton(
                              child: Text('Log Out',
                                  style: GoogleFonts.poppins(
                                      color: Color(0xFFB23F56),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500)),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            )),
                      ],
                    ),
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
