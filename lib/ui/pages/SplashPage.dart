import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutterstarterkit/ui/pages/HomePage.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  String developersInfo =
      "Developed by TeaParty\nContact info: leoalbalah@gmail.com";

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      navigateFromSplash();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset("assets/images/splash.png"),
      ),
    );
  }

  Future navigateFromSplash() async {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }
}
