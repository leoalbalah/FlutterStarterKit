import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterstarterkit/ui/widgets/settingsTile.dart';

// ignore: must_be_immutable
class SettingsSection extends StatelessWidget {
  final String title;
  final List<SettingsTile> tiles;
  bool showBottomDivider = false;

  SettingsSection({
    Key key,
    this.tiles,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      title == null
          ? Container()
          : Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                title,
                style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
      ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: tiles.length,
        separatorBuilder: (BuildContext context, int index) =>
            Divider(height: 1),
        itemBuilder: (BuildContext context, int index) {
          return tiles[index];
        },
      ),
      showBottomDivider ? Divider(height: 1) : Text("")
    ]);
  }
}
