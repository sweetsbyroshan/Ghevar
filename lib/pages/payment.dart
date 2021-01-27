import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentPage extends StatelessWidget {
  List<PaymentData> data = [
    PaymentData(
        name: 'Bank Card',
        color: Colors.redAccent.shade200,
        color2: Colors.redAccent.shade700,
        icon: Icons.credit_card_outlined),
    PaymentData(
        name: 'Credit Card',
        color: Colors.amber.shade300,
        color2: Colors.amber.shade700,
        icon: Icons.credit_card_outlined),
    PaymentData(
        name: 'Cash',
        color: Colors.green.shade300,
        color2: Colors.green.shade700,
        icon: Icons.money_outlined),
    PaymentData(
        name: 'PayPal',
        color: Colors.blue.shade300,
        color2: Colors.blue.shade700,
        icon: Icons.wallet_giftcard_outlined),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(top: 24, left: 16, right: 16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text('Payment Methods',
                  style: GoogleFonts.poppins(
                      color: Color(0xFF474749),
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: data.length,
                  itemBuilder: (context, i) => Container(
                    padding: EdgeInsets.symmetric(vertical: 50, horizontal: 40),
                    margin: EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                        color: data[i].color,
                        borderRadius: BorderRadius.circular(21)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: Icon(
                              data[i].icon,
                              color: data[i].color2,
                              size: 36,
                            )),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 4,
                          child: Text(
                            data[i].name,
                            textAlign: TextAlign.start,
                            style: GoogleFonts.poppins().copyWith(
                                color: data[i].color2,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          ]),
        ),
      ),
    ));
  }
}

class PaymentData {
  final String name;
  final Color color, color2;
  final IconData icon;

  PaymentData({this.color2, this.name, this.color, this.icon});
}
