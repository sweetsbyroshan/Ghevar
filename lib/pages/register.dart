import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ButtonTheme(
              minWidth: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: FlatButton(
                color: Color(0xFFFD8700),
                child: Text(
                  'Sign Up',
                  style: GoogleFonts.poppins().copyWith(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w300),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            SizedBox(height: 8),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: RichText(
                text: TextSpan(
                  text: 'Already have an account?  ',
                  style: GoogleFonts.poppins().copyWith(
                      color: Color(0xFF171717),
                      fontSize: 17,
                      fontWeight: FontWeight.w300),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Sign In',
                        style: GoogleFonts.poppins().copyWith(
                            color: Color(0xFF0274BC),
                            fontSize: 15,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 3,
              child: Container(
                color: Color(0xFF0274BC),
                child: Image.asset(
                  'assets/register.png',
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ),
            Flexible(
              flex: 8,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Text('Getting Started',
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0274BC))),
                    ),
                    Flexible(
                      flex: 1,
                      child: Text('Create an account to continue',
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                              color: Color(0xFF3C3C3C))),
                    ),
                    Form(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person_outline),
                                labelText: 'Your Name',
                                labelStyle: GoogleFonts.poppins().copyWith(
                                    color: Color(0xFF838383),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300))),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email_outlined),
                                labelText: 'Email',
                                labelStyle: GoogleFonts.poppins().copyWith(
                                    color: Color(0xFF838383),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300))),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock_outline),
                                suffix: Material(
                                    child: InkWell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Forgot?'),
                                  ),
                                  onTap: () {},
                                )),
                                labelText: 'Password',
                                labelStyle: GoogleFonts.poppins().copyWith(
                                    color: Color(0xFF838383),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300))),
                      ],
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
