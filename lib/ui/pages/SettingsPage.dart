import 'package:flutter/material.dart';
import 'package:flutterstarterkit/logic/globals/Texts.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key key}) : super(key: key);

  @override
  _MySettingsPageState createState() => _MySettingsPageState();
}

class _MySettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(xSettings),
      ),
      body: Center(
        child: Text(
          'Settings Page',
        ),
      ),
    );
  }
}
