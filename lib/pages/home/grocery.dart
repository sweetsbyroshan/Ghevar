import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:goonie/pages/filter.dart';

class GroceryPage extends StatefulWidget {
  @override
  _GroceryPageState createState() => _GroceryPageState();
}

class _GroceryPageState extends State<GroceryPage> {
  bool isFav = false;
  List<CategoryModel> data = [
    CategoryModel(
      name: 'Steak',
      asset: 'assets/steak.png',
    ),
    CategoryModel(
      name: 'Vegetable',
      asset: 'assets/vegetables.png',
    ),
    CategoryModel(
      name: 'Beverages',
      asset: 'assets/beverages.png',
    ),
    CategoryModel(
      name: 'Fish',
      asset: 'assets/fish.png',
    ),
    CategoryModel(
      name: 'Wine',
      asset: 'assets/wine.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color(0xFFF6F8F9),
                    border: Border.all(width: 1, color: Color(0xFFE1E1E1)),
                    borderRadius: BorderRadius.circular(11)),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11)),
                  onPressed: () {
                    showFilter();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.search),
                      Text(
                        'Search in thousands of products',
                        style: GoogleFonts.poppins()
                            .copyWith(color: Color(0xFF474749), fontSize: 11),
                      ),
                      IconButton(
                        icon: Icon(Icons.mic_outlined),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Card(
                      child: FlatButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/map.png',
                              width: 45,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Home Address',
                                  style: GoogleFonts.poppins().copyWith(
                                      color: Color(0xFF474749),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                Text(
                                  'Oxford St. No:2\nStreet x12',
                                  style: GoogleFonts.poppins().copyWith(
                                      color: Color(0xFF474749),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Card(
                      child: FlatButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/map.png',
                              width: 45,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Office Address',
                                  style: GoogleFonts.poppins().copyWith(
                                      color: Color(0xFF474749),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                Text(
                                  'Eye St. No:2456\nStreet x12',
                                  style: GoogleFonts.poppins().copyWith(
                                      color: Color(0xFF474749),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Explore by Category',
                      style: GoogleFonts.poppins().copyWith(
                          color: Color(0xFF474749),
                          fontWeight: FontWeight.bold,
                          fontSize: 11),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'See All (36)',
                        style: GoogleFonts.poppins().copyWith(
                            color: Color(0xFF939394),
                            fontSize: 9,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    itemBuilder: (context, i) => Container(
                      height: 56,
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 56,
                              width: 56,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(data[i].asset),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(14))),
                          Text(
                            '${data[i].name}',
                            style: GoogleFonts.poppins().copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF2C3D55)),
                          ),
                        ],
                      ),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8),
                child: Text(
                  'Deals of the day',
                  style: GoogleFonts.poppins().copyWith(
                      color: Color(0xFF474749),
                      fontWeight: FontWeight.bold,
                      fontSize: 11),
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                        child: InkWell(
                          customBorder: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(right: 10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                        height: 100,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/iceeam.png'),
                                                fit: BoxFit.cover),
                                            borderRadius:
                                                BorderRadius.circular(14))),
                                    Material(
                                      color: Colors.transparent,
                                      shape: CircleBorder(),
                                      child: InkWell(
                                        customBorder: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(250)),
                                        splashColor: Color(0x66FB8484),
                                        onTap: () {
                                          setState(() {
                                            isFav = !isFav;
                                          });
                                        },
                                        child: Container(
                                          padding: EdgeInsets.all(4),
                                          child: Icon(
                                            Icons.favorite,
                                            color: isFav
                                                ? Color(0xFFFB8484)
                                                : Color(0xFFD7D7D7),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 3.0),
                                        child: Text(
                                          'Summer Sun Ice Cream Pack',
                                          style: GoogleFonts.poppins().copyWith(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF494949)),
                                        ),
                                      ),
                                      Text(
                                        'Pieces 5',
                                        style: GoogleFonts.poppins().copyWith(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF494949)),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 3.0),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.location_on_outlined,
                                              size: 16,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 4.0),
                                              child: Text(
                                                '15 Minutes Away',
                                                style: GoogleFonts.poppins()
                                                    .copyWith(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color:
                                                            Color(0xFF494949)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 2.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              '\$ 12',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color(0xFFEF6A62)),
                                            ),
                                            SizedBox(
                                              width: 18,
                                            ),
                                            Text(
                                              '\$ 18',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                      fontSize: 10,
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color: Color(0xFF494949)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                        child: InkWell(
                          customBorder: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(right: 10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                        height: 100,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/coca.png'),
                                                fit: BoxFit.cover),
                                            borderRadius:
                                                BorderRadius.circular(14))),
                                    Material(
                                      color: Colors.transparent,
                                      shape: CircleBorder(),
                                      child: InkWell(
                                        customBorder: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(250)),
                                        splashColor: Color(0x66FB8484),
                                        onTap: () {
                                          setState(() {
                                            isFav = !isFav;
                                          });
                                        },
                                        child: Container(
                                          padding: EdgeInsets.all(4),
                                          child: Icon(
                                            Icons.favorite,
                                            color: isFav
                                                ? Color(0xFFFB8484)
                                                : Color(0xFFD7D7D7),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 3.0),
                                        child: Text(
                                          'Summer Sun Ice Cream Pack',
                                          style: GoogleFonts.poppins().copyWith(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF494949)),
                                        ),
                                      ),
                                      Text(
                                        'Pieces 5',
                                        style: GoogleFonts.poppins().copyWith(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF494949)),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 3.0),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.location_on_outlined,
                                              size: 16,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 4.0),
                                              child: Text(
                                                '15 Minutes Away',
                                                style: GoogleFonts.poppins()
                                                    .copyWith(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color:
                                                            Color(0xFF494949)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 2.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              '\$ 12',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color(0xFFEF6A62)),
                                            ),
                                            SizedBox(
                                              width: 18,
                                            ),
                                            Text(
                                              '\$ 18',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                      fontSize: 10,
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color: Color(0xFF494949)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8.0),
                child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFFFC8BD),
                            borderRadius: BorderRadius.circular(10)),
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        child: Row(
                          children: [
                            Flexible(
                                fit: FlexFit.tight,
                                flex: 2,
                                child: Container()),
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Mega',
                                    style: GoogleFonts.poppins().copyWith(
                                        color: Color(0xFFD13B27),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                        text: 'WHOOP',
                                        style: GoogleFonts.poppins().copyWith(
                                            color: Color(0xFF21114C),
                                            fontWeight: FontWeight.w900,
                                            letterSpacing: 2,
                                            fontSize: 31),
                                        children: [
                                          TextSpan(
                                            text: 'E',
                                            style: GoogleFonts.poppins()
                                                .copyWith(
                                                    color: Color(0xFFD13B27),
                                                    fontWeight: FontWeight.w900,
                                                    letterSpacing: 2,
                                                    fontSize: 31),
                                          ),
                                          TextSpan(
                                            text: 'R',
                                            style: GoogleFonts.poppins()
                                                .copyWith(
                                                    color: Color(0xFF21114C),
                                                    fontWeight: FontWeight.w900,
                                                    letterSpacing: 2,
                                                    fontSize: 31),
                                          ),
                                        ]),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 2.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          '\$ 12',
                                          style: GoogleFonts.poppins().copyWith(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFFEF6A62)),
                                        ),
                                        SizedBox(
                                          width: 18,
                                        ),
                                        Text(
                                          '\$ 18',
                                          style: GoogleFonts.poppins().copyWith(
                                            fontSize: 18,
                                            decoration:
                                                TextDecoration.lineThrough,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset('assets/hamburger.png')
                    ],
                  ),
              ),
            ],
          )),
    );
  }

  showFilter() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) {
          return SafeArea(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: FilterPage(),
            ),
          );
        });
  }
}

class CategoryModel {
  final String name, asset;

  CategoryModel({this.name, this.asset});
}
