import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goonie/pages/order_status.dart';
import 'package:goonie/pages/home.dart';
import 'package:goonie/pages/login.dart';
import 'package:goonie/pages/payment.dart';
import 'package:goonie/pages/profile.dart';
import 'package:goonie/pages/purchase.dart';
import 'package:goonie/pages/register.dart';

import 'pages/checkout.dart';
import 'pages/splash.dart';
import 'pages/walkthrough.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case 'splash':
            return CupertinoPageRoute(builder: (_) => SplashPage());
          case 'walkthrough':
            return CupertinoPageRoute(builder: (_) => WalkThroughPage());
          case 'login':
            return CupertinoPageRoute(builder: (_) => LoginPage());
          case 'register':
            return CupertinoPageRoute(builder: (_) => RegisterPage());
          case 'home':
            return CupertinoPageRoute(builder: (_) => HomePage());
          case 'profile':
            return CupertinoPageRoute(builder: (_) => ProfilePage());
          case 'checkout':
            return CupertinoPageRoute(builder: (_) => CheckoutPage());
          case 'orderstatus':
            return CupertinoPageRoute(builder: (_) => OrderStatusPage());
          case 'payment':
            return CupertinoPageRoute(builder: (_) => PaymentPage());
          case 'purchase':
            return CupertinoPageRoute(builder: (_) => PurchasePage());
          default:
            return CupertinoPageRoute(
                builder: (_) => Scaffold(
                      body: Center(
                          child: Text('No route defined for ${settings.name}')),
                    ));
        }
      },
    );
  }
}
