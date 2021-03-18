import 'package:flutter/material.dart';
import 'package:flutterstarterkit/logic/globals/Texts.dart';
import 'package:flutterstarterkit/logic/handlers/SharedPrefsHandler.dart';
import 'package:flutterstarterkit/logic/providers/MyProvider.dart';
import 'package:flutterstarterkit/ui/widgets/alert.dart';
import 'package:provider/provider.dart';

class ExtraPage extends StatefulWidget {
  ExtraPage({Key key}) : super(key: key);

  @override
  _MyExtraPageState createState() => _MyExtraPageState();
}

class _MyExtraPageState extends State<ExtraPage> {
  @override
  void initState() {
    loadPermanetCount();
  }

  Future<void> loadPermanetCount() async {
    int permCount = await checkPermanentData();

    if (permCount != 0) {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        var myProvider = Provider.of<MyProvider>(context, listen: false);
        myProvider.setCount(permCount);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<MyProvider>(context);
    return WillPopScope(
      onWillPop: () async {
        bool action = await showconfirmAlertDialog(context);
        return action;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(xExtra),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                xActualCount,
              ),
              Text(
                myProvider.getCount.toString(),
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
