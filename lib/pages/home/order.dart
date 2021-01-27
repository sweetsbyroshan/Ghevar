import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:goonie/widgets/cart_item.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
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
    return e ? empty() : fill();
  }

  bool e = false;
  Widget fill() {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Cart',
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2C3D55))),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'checkout');
                    },
                    color: Color(0xFFB23F56),
                    child: Row(
                      children: [
                        Text(
                          'Proceed to Checkout',
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Icon(
                          Icons.chevron_right_outlined,
                          color: Colors.white,
                        )
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.5)),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 7,
            child: SingleChildScrollView(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    e = !e;
                  });
                },
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ListView.separated(
                      primary: false,
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return Divider();
                      },
                      itemBuilder: (context, index) =>
                          CartItem(cartModel: data[index]),
                      itemCount: data.length,
                    )),
              ),
              primary: true,
            ),
          )
        ],
      ),
    );
  }

  Widget empty() {
    return GestureDetector(
      onTap: () {
        setState(() {
          e = !e;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Image.asset(
              'assets/empty_order.png',
              height: 200,
            ),
            SizedBox(
              height: 36,
            ),
            Text(
              'No orders have been placed yet.\nDiscover and order now',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins()
                  .copyWith(fontSize: 15, color: Color(0xFF949494)),
            )
          ],
        ),
      ),
    );
  }
}

class CartModel {
  final String title, sub, asset;
  int count;
  CartModel({this.title, this.sub, this.count = 1, this.asset});
}
