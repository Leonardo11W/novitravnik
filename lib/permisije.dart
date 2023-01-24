import 'package:permission_handler/permission_handler.dart';

class Permisije {}

void requestLocationPermission() async {
  /// status can either be: granted, denied, restricted or permanentlyDenied
  var status = await Permission.location.status;
  if (status.isGranted) {
    print("Permission is granted");
  } else if (status.isDenied) {
    // We didn't ask for permission yet or the permission has been denied before but not permanently.
    if (await Permission.location.request().isGranted) {
      // Either the permission was already granted before or the user just granted it.
      print("Permission was granted");
    }
  }

  // You can can also directly ask the permission about its status.
  // if (await Permission.location.isRestricted) {
  //   // The OS restricts access, for example because of parental controls.
  // }
}
