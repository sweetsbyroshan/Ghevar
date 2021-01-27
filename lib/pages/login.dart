import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0274BC),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 3,
              child: Image.asset(
                'assets/login.png',
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Flexible(
              flex: 7,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  children: [
                    Text('Let’s Sign You In',
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0274BC))),
                    Text('Welcome back, you’ve been missed!',
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFF3C3C3C))),
                    SizedBox(
                      height: 40,
                    ),
                    Form(
                        child: Column(
                      children: [
                        TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person_outline),
                                labelText: 'Username or Email',
                                labelStyle: GoogleFonts.poppins().copyWith(
                                    color: Color(0xFF838383),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300))),
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
                        Padding(
                          padding: EdgeInsets.all(28.0),
                          child: ButtonTheme(
                            minWidth: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            child: FlatButton(
                              color: Color(0xFFFD8700),
                              child: Text(
                                'Sign In',
                                style: GoogleFonts.poppins().copyWith(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w300),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, 'home');
                              },
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'register');
                          },
                          child: RichText(
                            text: TextSpan(
                              text: 'Don’t have an account?  ',
                              style: GoogleFonts.poppins().copyWith(
                                  color: Color(0xFF171717),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w300),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Sign Up',
                                    style: GoogleFonts.poppins().copyWith(
                                        color: Color(0xFF0274BC),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ),
                        )
                      ],
                    ))
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
