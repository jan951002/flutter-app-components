import 'package:flutter/material.dart';

class IconsUtil {
  final _iconsMap = <String, IconData>{
    'add_alert': Icons.add_alert,
    'accessibility': Icons.accessibility,
    'folder_open': Icons.folder_open
  };

  Icon getIconByString(String iconName) {
    return Icon(_iconsMap[iconName], color: Colors.blue);
  }
}
