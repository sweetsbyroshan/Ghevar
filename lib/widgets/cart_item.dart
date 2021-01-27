import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:goonie/pages/home/order.dart';

import 'goonie_button.dart';

class CartItem extends StatefulWidget {
  final CartModel cartModel;

  const CartItem({Key key, this.cartModel}) : super(key: key);
  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            fit: FlexFit.tight,
            flex: 7,
            child: Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.cartModel.asset),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(14)),
            ),
          ),
          Flexible(
            flex: 18,
            fit: FlexFit.tight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '${widget.cartModel.title}',
                    style: GoogleFonts.poppins().copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF2C3D55)),
                  ),
                  Text(
                    '${widget.cartModel.sub}',
                    style: GoogleFonts.poppins().copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF8D98A4)),
                  )
                ],
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 15,
            child: GoonieButton(
              add: () {
                setState(() {
                  widget.cartModel.count = widget.cartModel.count + 1;
                });
              },
              count: widget.cartModel.count,
              onAdd: () {
                setState(() {
                  widget.cartModel.count = widget.cartModel.count + 1;
                });
              },
              onSub: () {
                setState(() {
                  if (widget.cartModel.count != 0)
                    widget.cartModel.count = widget.cartModel.count - 1;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
