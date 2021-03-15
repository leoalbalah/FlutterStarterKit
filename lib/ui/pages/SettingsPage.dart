import 'package:flutter/material.dart';
import 'package:flutterstarterkit/logic/globals/Texts.dart';
import 'package:flutterstarterkit/ui/widgets/SettingsList.dart';
import 'package:flutterstarterkit/ui/widgets/SettingsSection.dart';
import 'package:flutterstarterkit/ui/widgets/SettingsTile.dart';
import 'package:package_info/package_info.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key key}) : super(key: key);

  @override
  _MySettingsPageState createState() => _MySettingsPageState();
}

class _MySettingsPageState extends State<SettingsPage> {
  PackageInfo _packageInfo = PackageInfo(
      appName: 'Unknown',
      packageName: 'Unknown',
      version: "Unknown",
      buildNumber: "Unknown");

  @override
  void initState() {
    initPackageInfo();
  }

  Future<void> initPackageInfo() async {
    final PackageInfo info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
  }

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
                  title: xAppName,
                  subtitle: _packageInfo.appName,
                  leading: Icon(Icons.cloud_queue),
                ),
                SettingsTile(
                  title: xAppPackage,
                  subtitle: _packageInfo.packageName,
                  leading: Icon(Icons.cloud_queue),
                ),
                SettingsTile(
                  title: xAppVersion,
                  subtitle: _packageInfo.version,
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
