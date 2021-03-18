import 'package:flutter/material.dart';
import 'package:flutterstarterkit/logic/globals/Texts.dart';
import 'package:flutterstarterkit/logic/handlers/PermissionsHandler.dart';
import 'package:flutterstarterkit/logic/handlers/SharedPrefsHandler.dart';
import 'package:flutterstarterkit/logic/providers/MyProvider.dart';
import 'package:flutterstarterkit/ui/widgets/alert.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<MyProvider>(context);
    checkPermitions();
    return WillPopScope(
      onWillPop: () async {
        bool action = await showconfirmAlertDialog(context);
        return action;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(xTitle),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                myProvider.getCount.toString(),
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            myProvider.increaseCount();
            increaseCount();
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
