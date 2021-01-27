import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoonieButton extends StatefulWidget {
  int count = 0;
  final Function onAdd, onSub, add;
  GoonieButton({this.count, this.onAdd, this.onSub, this.add});
  @override
  _GoonieButtonState createState() => _GoonieButtonState();
}

class _GoonieButtonState extends State<GoonieButton> {
  @override
  Widget build(BuildContext context) {
    if (widget.count == 0 || widget.count == null)
      return ButtonTheme(
        child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          child: Text('ADD',
              style: GoogleFonts.poppins().copyWith(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold)),
          color: Color(0xFFB23F56),
          onPressed: () {
            setState(() {
              widget.add();
            });
          },
        ),
      );
    else {
      return Container(
        width: MediaQuery.of(context).size.width * .33,
        padding: EdgeInsets.symmetric(vertical: 4),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Material(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9)),
                color: Color(0xFFB1EAFD),
                child: InkWell(
                  child: Icon(
                    Icons.remove,
                    color: Color(0xFF48B6DB),
                    size: 33,
                  ),
                  onTap: () {
                    widget.onSub();
                  },
                ),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Text(
                '${widget.count}',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins().copyWith(
                    color: Color(0xFF424242),
                    fontWeight: FontWeight.bold,
                    fontSize: 19),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Material(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9)),
                color: Color(0xFFB1EAFD),
                child: InkWell(
                  child: Icon(
                    Icons.add,
                    color: Color(0xFF48B6DB),
                    size: 33,
                  ),
                  onTap: () {
                    widget.onAdd();
                  },
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
