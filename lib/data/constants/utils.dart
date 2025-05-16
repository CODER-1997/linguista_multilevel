import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:package_info_plus/package_info_plus.dart';
String generateUniqueId() {
  int timestamp = DateTime.now().millisecondsSinceEpoch;
  return '$timestamp';
}
class Utils {
  // static var phoneMaskFormatter = MaskTextInputFormatter(
  //     mask: '+998 ## ### ## ##',
  //     filter: {"#": RegExp(r'[0-9]')},
  //     type: MaskAutoCompletionType.lazy);

  static Color getColor(String status) {
    if(status=='new'){
      return Colors.blue;
    }
   else if(status=='accepted'){
      return Colors.green;
    }
    else if(status=='rejected'){
      return Colors.red;
    }
   return Colors.deepPurpleAccent;
  }
  var box = GetStorage();


  Future<void> getAppVersion() async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();

    String version = packageInfo.version;
    String buildNumber = packageInfo.buildNumber;

    print('Version: $version');
    print('Build Number: $buildNumber');
    box.write('app_version', version);
    box.write('app_build_number', buildNumber);

  }

}


