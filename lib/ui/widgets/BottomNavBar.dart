import 'package:flutter/material.dart';
import 'package:flutterstarterkit/logic/globals/Colors.dart';
import 'package:flutterstarterkit/logic/providers/MyProvider.dart';
import 'package:flutterstarterkit/ui/pages/ExtraPage.dart';
import 'package:flutterstarterkit/ui/pages/HomePage.dart';
import 'package:flutterstarterkit/ui/pages/SettingsPage.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>
    with SingleTickerProviderStateMixin {
  int currentTab = 0;

  @override
  void initState() {
    super.initState();
  }

  final tabPages = <Widget>[
    Center(child: HomePage()),
    Center(child: ExtraPage()),
    Center(child: SettingsPage()),
  ];
  var bottomBarItems = <BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.explicit_sharp), label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
  ];

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<MyProvider>(context);
    return Scaffold(
      body: tabPages[
          (myProvider.tabState != -1) ? myProvider.tabState : currentTab],
      bottomNavigationBar: BottomNavigationBar(
          items: bottomBarItems,
          selectedItemColor: xBlue,
          unselectedItemColor: xBlackLight,
          currentIndex:
              (myProvider.tabState != -1) ? myProvider.tabState : currentTab,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 15,
          onTap: (int index) {
            myProvider.tabState = -1;
            setState(() {
              currentTab = index;
            });
          }),
    );
  }
}
