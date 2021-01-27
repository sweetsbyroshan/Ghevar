import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderStatusPage extends StatelessWidget {
  List<StepperData> data = [
    StepperData(
        asset: 'assets/send.png',
        title: 'Sended Request',
        timestamp: '08:23 pm',
        isActive: false,
        call: '',
        secondary: '*** *** **** 5254'),
    StepperData(
        asset: 'assets/confirmed.png',
        title: 'Confirmed',
        timestamp: '08:23 pm',
        isActive: false,
        call: '',
        secondary: ''),
    StepperData(
        asset: 'assets/shipper.png',
        title: 'Shipper',
        timestamp: '08:23 pm',
        isActive: false,
        call: 'JAY : +91 816 977 7677',
        secondary: ''),
    StepperData(
        asset: 'assets/shipping.png',
        title: 'Shipping',
        timestamp: '08:23 pm',
        call: '',
        isActive: true,
        secondary: ''),
    StepperData(
        asset: 'assets/recieve.png',
        title: 'Receive Food',
        timestamp: '',
        call: '',
        isActive: false,
        secondary: 'Arriving in 11 mins.'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
              Divider(),
              Stepper(
                physics: BouncingScrollPhysics(),
                controlsBuilder: (context, {onStepCancel, onStepContinue}) {
                  return Container();
                },
                steps: data
                    .map((e) => Step(
                        isActive: e.isActive,
                        state: !e.isActive
                            ? StepState.disabled
                            : StepState.indexed,
                        title: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset(e.asset),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  e.title.length > 1
                                      ? Text(
                                          e.title,
                                          style: GoogleFonts.poppins().copyWith(
                                              color: Color(0xFF2C2C2C),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        )
                                      : Container(),
                                  e.timestamp.length > 1
                                      ? Text(e.timestamp,
                                          style: GoogleFonts.poppins().copyWith(
                                              color: Color(0xFF2C2C2C),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13))
                                      : Container(),
                                  e.secondary.length > 1
                                      ? Text(e.secondary,
                                          style: GoogleFonts.poppins().copyWith(
                                              color: Color(0xFF2C2C2C),
                                              fontSize: 13))
                                      : Container(),
                                  e.call.length > 1
                                      ? Text(e.call,
                                          style: GoogleFonts.poppins().copyWith(
                                              color: Color(0xFF2C2C2C),
                                              fontSize: 13))
                                      : Container(),
                                ],
                              ),
                            ),
                          ],
                        ),
                        content: Container()))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StepperData {
  final String title, timestamp, secondary, call, asset;
  final bool isActive;

  StepperData(
      {this.asset,
      this.isActive,
      this.title,
      this.timestamp,
      this.secondary,
      this.call});
}
