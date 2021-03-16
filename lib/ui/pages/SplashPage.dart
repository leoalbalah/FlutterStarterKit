import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutterstarterkit/logic/globals/Images.dart';
import 'package:flutterstarterkit/logic/globals/Texts.dart';
import 'package:flutterstarterkit/ui/widgets/bottomNavBar.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
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
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(50),
          child: Text(
            xDeveloperInfo,
            textAlign: TextAlign.center,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: xSplash,
      ),
    );
  }

  Future navigateFromSplash() async {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => BottomNavBar()));
  }
}
