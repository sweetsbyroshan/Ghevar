import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  List<StepperData> data = [
    StepperData(
      asset: 'assets/send.png',
      title:
          'Food Crazy Pizza Store x 2 big Pizza Menu 3 x Fresh Banan Milkshake',
      isActive: true,
    ),
    StepperData(
      asset: 'assets/shipper.png',
      title: 'Old Student House 56 Street',
      isActive: true,
    ),
  ];

  List<PaymentData> pData = [
    PaymentData(
      title: 'Credit Card 1',
      sub: '1256 **** **** **12',
      isSelect: false,
    ),
    PaymentData(
      title: 'Credit Card 2',
      sub: '1256 **** **** **12',
      isSelect: false,
    ),
    PaymentData(
      title: 'E-Wallet',
      sub: 'Payment with a new card',
      isSelect: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bNB(),
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
                Text('Order Status',
                    style: GoogleFonts.poppins(
                        color: Color(0xFFEF6A62),
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                Text('#43654645',
                    style: GoogleFonts.poppins(
                      color: Color(0xFF474749),
                      fontSize: 16,
                    )),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Divider(),
                ),
                Stepper(
                  physics: BouncingScrollPhysics(),
                  controlsBuilder: (context, {onStepCancel, onStepContinue}) {
                    return Container();
                  },
                  steps: data
                      .map((e) => Step(
                          title: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                flex: 2,
                                child: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Image.asset(e.asset),
                                ),
                              ),
                              Flexible(
                                flex: 5,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    e.title,
                                    style: GoogleFonts.poppins().copyWith(
                                        color: Color(0xFF2C2C2C),
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          content: Container()))
                      .toList(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Divider(),
                ),
                Text('Credit/Debit Cards',
                    style: GoogleFonts.poppins(
                        color: Color(0xFF424242),
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: ListView.builder(
                      primary: false,
                      itemCount: pData.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return RadioListTile(
                          onChanged: (v) {
                            setState(() {
                              for (var item in pData) {
                                item.isSelect = false;
                              }
                              pData[index].isSelect = v;
                            });
                          },
                          groupValue: pData[index].isSelect,
                          value: true,
                          title: Text(pData[index].title),
                          subtitle: Text(pData[index].sub),
                        );
                      },
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget bNB() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Row(
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
    );
  }
}

class StepperData {
  final String title, asset;
  bool isActive;

  StepperData({
    this.asset,
    this.isActive,
    this.title,
  });
}

class PaymentData {
  final String title, sub;
  bool isSelect;
  PaymentData({this.title, this.sub, this.isSelect});
}
