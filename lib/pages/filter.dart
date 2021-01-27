import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  List<String> buttons = [
    'Open',
    'Sale',
    'Pick Up',
  ];
  List<String> buttons1 = [
    'Preferred',
    'Previously Ordered',
    'Verified',
  ];
  List<bool> buttonsBool = [
    false,
    false,
    false,
  ];
  List<bool> buttonsBool1 = [
    false,
    false,
    false,
  ];
  List<bool> foodbool = [
    false,
    false,
    false,
    false,
    false,
  ];
  List<FoodItem> food = [
    FoodItem(name: 'Cake', icon: Icons.cake_outlined),
    FoodItem(name: 'Food', icon: Icons.dinner_dining),
    FoodItem(name: 'Drinks', icon: Icons.wine_bar_outlined),
    FoodItem(name: 'Snacks', icon: Icons.fastfood_outlined),
    FoodItem(name: 'Beverage', icon: Icons.emoji_food_beverage_outlined),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bNB(context),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16,
              ),
              ClipOval(
                  child: Material(
                elevation: 0,
                color: Colors.transparent, // button color
                child: InkWell(
                  splashColor: Color(0xFFB23F56),
                  onTap: () => Navigator.pop(context),
                  child: SizedBox(
                      width: 36,
                      height: 36,
                      child: Icon(
                        Icons.close,
                        color: Color(0xFFB23F56),
                      )),
                ),
              )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Select Category',
                    style: GoogleFonts.poppins().copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2C3D55))),
              ),
              Center(
                child: ToggleButtons(
                  fillColor: Color(0xFFFEFEFE),
                  selectedColor: Color(0xFFB23F56),
                  borderWidth: 0,
                  borderColor: Colors.transparent,
                  selectedBorderColor: Colors.transparent,
                  constraints: BoxConstraints(
                      minHeight: 50,
                      minWidth: MediaQuery.of(context).size.width * .25),
                  children: buttons
                      .map((e) => Container(
                            width: MediaQuery.of(context).size.width * .25,
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            child: Text(
                              e,
                              textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  width: 1, color: Color(0xFFDCDCDC)),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 16),
                          ))
                      .toList(),
                  onPressed: (int index) {
                    setState(() {
                      buttonsBool[index] = !buttonsBool[index];
                    });
                  },
                  isSelected: buttonsBool,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Center(
                child: ToggleButtons(
                  selectedColor: Color(0xFFB23F56),
                  fillColor: Color(0xFFFEFEFE),
                  borderWidth: 0,
                  borderColor: Colors.transparent,
                  selectedBorderColor: Colors.transparent,
                  constraints: BoxConstraints(
                    minHeight: 50,
                  ),
                  children: buttons1
                      .map((e) => Container(
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            child: Text(
                              e,
                              textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  width: 1, color: Color(0xFFDCDCDC)),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 16),
                          ))
                      .toList(),
                  onPressed: (int index) {
                    setState(() {
                      buttonsBool1[index] = !buttonsBool1[index];
                    });
                  },
                  isSelected: buttonsBool1,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Price',
                    style: GoogleFonts.poppins().copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2C3D55))),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RangeSlider(
                    values: _currentRangeValues,
                    inactiveColor: Colors.grey.shade300,
                    activeColor: Color(0xFFB23F56),
                    min: 18,
                    max: 100,
                    divisions: 5,
                    labels: RangeLabels(
                      _currentRangeValues.start.round().toString(),
                      _currentRangeValues.end.round().toString(),
                    ),
                    onChanged: (RangeValues values) {
                      setState(() {
                        _currentRangeValues = values;
                      });
                    },
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Rating ',
                    style: GoogleFonts.poppins().copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2C3D55))),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RatingBar.builder(
                    initialRating: 2,
                    minRating: 0,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    glowColor: Colors.amber.shade100,
                    unratedColor: Colors.amber.withAlpha(50),
                    itemCount: 5,
                    itemSize: 30.0,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      _selectedIcon ?? Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      setState(() {
                        _rating = rating;
                      });
                    },
                    updateOnDrag: true,
                  )),
              SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ToggleButtons(
                  selectedColor: Color(0xFFB23F56),
                  fillColor: Color(0xFFFEFEFE),
                  borderWidth: 0,
                  borderColor: Colors.transparent,
                  selectedBorderColor: Colors.transparent,
                  constraints: BoxConstraints(
                    minHeight: 50,
                  ),
                  children: food
                      .map((e) => Container(
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              children: [
                                Icon(e.icon),
                                Text(
                                  e.name,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  width: 1, color: Color(0xFFDCDCDC)),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 16),
                          ))
                      .toList(),
                  onPressed: (int index) {
                    setState(() {
                      foodbool[index] = !foodbool[index];
                    });
                  },
                  isSelected: foodbool,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget bNB(context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: FlatButton(
        onPressed: () {
          Navigator.pop(context);
        },
        color: Color(0xFFB23F56),
        child: Text(
          'Purchase',
          style: GoogleFonts.poppins().copyWith(
              fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        height: 40,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.5)),
      ),
    );
  }

  double _rating;
  IconData _selectedIcon;
  RangeValues _currentRangeValues = const RangeValues(40, 80);
}

class FoodItem {
  final IconData icon;
  final String name;
  FoodItem({this.icon, this.name});
}
