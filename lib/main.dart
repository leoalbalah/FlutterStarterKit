import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterstarterkit/logic/globals/Colors.dart';
import 'package:flutterstarterkit/ui/pages/HomePage.dart';
import 'package:provider/provider.dart';
import 'logic/providers/MyProvider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Starter Kit',
        theme: ThemeData(
          primarySwatch: xBlue,
          brightness: Brightness.light,
          fontFamily: 'Raleway',
        ),
        home: HomePage(),
      ),
    );
  }
}
