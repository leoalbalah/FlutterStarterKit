import 'package:permission_handler/permission_handler.dart';

void checkPermitions() async {
  // Storage Permission
  if (await Permission.storage.request().isGranted) {
    print("Storage Permission Granted");
  } else {
    print("Storage Permission Not Granted");
  }
}
