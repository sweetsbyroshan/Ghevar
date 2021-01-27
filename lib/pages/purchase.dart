import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:goonie/pages/home/order.dart';

class PurchasePage extends StatelessWidget {
  List<CartModel> data = [
    CartModel(
        title: 'Turkish Steak',
        sub: '\$17',
        asset: 'assets/steak.png',
        count: 2),
    CartModel(
      title: 'Salmon',
      sub: '\$20',
      asset: 'assets/fish.png',
      count: 1,
    ),
    CartModel(
      title: 'Red Wine',
      sub: '\$141',
      asset: 'assets/wine.png',
      count: 3,
    ),
    CartModel(
        title: '2 Cola', sub: '\$3', asset: 'assets/beverages.png', count: 2),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: bNB(context),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 24, left: 16, right: 16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipOval(
                        child: Material(
                      elevation: 0,
                      color: Colors.transparent, // button color
                      child: InkWell(
                        splashColor: Colors.red,
                        onTap: () => Navigator.pop(context),
                        child: SizedBox(
                            width: 36,
                            height: 36,
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.red,
                            )),
                      ),
                    )),
                    Padding(
                      padding: EdgeInsets.only(bottom: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 2,
                              child: Icon(
                                Icons.receipt_long_outlined,
                                color: Color(0xFFC13254),
                                size: 28,
                              )),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 6,
                            child: Text(
                              'Food Crazy Pizza Store\nx 2 	Big Pizza Menu\nx 3 Fresh Banan Milkshake',
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins().copyWith(
                                  // color: data[i].color2,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 2,
                              child: Icon(
                                Icons.location_on_outlined,
                                color: Color(0xFFC13254),
                                size: 28,
                              )),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 6,
                            child: Text(
                              'Old Student House 56 Street',
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins().copyWith(
                                  // color: data[i].color2,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                              fit: FlexFit.tight,
                              flex: 2,
                              child: Icon(
                                Icons.access_time_outlined,
                                color: Color(0xFFC13254),
                                size: 28,
                              )),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 6,
                            child: Text(
                              '13:00 Today, Jul 24 ',
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins().copyWith(
                                  // color: data[i].color2,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 16.0,
                      ),
                      child: Text('Order',
                          style: GoogleFonts.poppins(
                              color: Color(0xFF474749),
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        height: 135,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: data.length,
                          itemBuilder: (context, i) => Container(
                            height: 50,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    height: 56,
                                    width: 56,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(data[i].asset),
                                            fit: BoxFit.cover),
                                        borderRadius:
                                            BorderRadius.circular(14))),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${data[i].title}',
                                      style: GoogleFonts.poppins().copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF2C3D55)),
                                    ),
                                    Text(
                                      '${data[i].sub}',
                                      style: GoogleFonts.poppins().copyWith(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF8D98A4)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )),
                    SizedBox(height: 40),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 6,
                            child: Text(
                              'Order Price',
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins().copyWith(
                                  // color: data[i].color2,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 2,
                            child: Text(
                              '\$91',
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins().copyWith(
                                  // color: data[i].color2,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 6,
                            child: Text(
                              'Shipping Cost ( 3,4 km )',
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins().copyWith(
                                  // color: data[i].color2,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 2,
                            child: Text(
                              '\$1.4',
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins().copyWith(
                                  // color: data[i].color2,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 6,
                            child: Text(
                              'Order Price',
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins().copyWith(
                                  // color: data[i].color2,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 2,
                            child: Text(
                              '\$91',
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins().copyWith(
                                  // color: data[i].color2,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ));
  }

  Widget bNB(context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '2 items',
                    style: GoogleFonts.poppins()
                        .copyWith(fontSize: 9, color: Color(0xFF2C3D55)),
                  ),
                  Text(
                    'Total',
                    style: GoogleFonts.poppins().copyWith(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF2C3D55)),
                  ),
                ],
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Color(0xFFB23F56),
                child: Row(
                  children: [
                    Text(
                      'Purchase',
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Icon(
                      Icons.credit_card_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.5)),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(4),
            child: ButtonTheme(
              padding: EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
              child: FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Color(0xFFF6F4F5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Cancel Order',
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF2C3D55)),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Icon(
                      Icons.credit_card_outlined,
                      color: Color(0xFF2C3D55),
                    )
                  ],
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.5)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
