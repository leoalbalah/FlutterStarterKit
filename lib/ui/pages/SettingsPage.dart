import 'package:flutter/material.dart';
import 'package:flutterstarterkit/logic/globals/Texts.dart';
import 'package:flutterstarterkit/logic/providers/MyProvider.dart';
import 'package:flutterstarterkit/ui/widgets/SettingsList.dart';
import 'package:flutterstarterkit/ui/widgets/SettingsSection.dart';
import 'package:flutterstarterkit/ui/widgets/SettingsTile.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key key}) : super(key: key);

  @override
  _MySettingsPageState createState() => _MySettingsPageState();
}

class _MySettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<MyProvider>(context);
    return WillPopScope(
        onWillPop: () async {
          //TODO
        },
        child: SettingsList(
          sections: [
            SettingsSection(
              title: "Settings",
              tiles: [
                SettingsTile(
                  title: "App Version",
                  subtitle: "TODO",
                  leading: Icon(Icons.cloud_queue),
                ),
              ],
            ),
            SettingsSection(
              title: "Demo Section",
              tiles: [
                SettingsTile(
                  title: "Demo",
                  leading: Icon(Icons.person_pin_circle),
                  subtitle: "Demo Subtitle",
                ),
              ],
            ),
          ],
        ));
  }
}
