import 'package:flutter/material.dart';
import 'package:flutterstarterkit/logic/globals/Texts.dart';
import 'package:flutterstarterkit/ui/widgets/SettingsList.dart';
import 'package:flutterstarterkit/ui/widgets/SettingsSection.dart';
import 'package:flutterstarterkit/ui/widgets/SettingsTile.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key key}) : super(key: key);

  @override
  _MySettingsPageState createState() => _MySettingsPageState();
}

class _MySettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        //TODO
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(xSettings),
        ),
        body: SettingsList(
          sections: [
            SettingsSection(
              title: xAppSection,
              tiles: [
                SettingsTile(
                  title: xAppVersion,
                  subtitle: "TODO",
                  leading: Icon(Icons.cloud_queue),
                ),
              ],
            ),
            SettingsSection(
              title: xDemoSection,
              tiles: [
                SettingsTile(
                  title: xDemoTitle,
                  leading: Icon(Icons.person_pin_circle),
                  subtitle: xDemoSubtitle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
