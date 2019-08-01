import 'package:flutter/material.dart';
import 'package:flutter_app_components/pages/alerts_page.dart';
import 'package:flutter_app_components/pages/avatar_page.dart';
import 'package:flutter_app_components/pages/card_page.dart';
import 'package:flutter_app_components/pages/home_page.dart';

Map<String, WidgetBuilder> getAppRoutes() => <String, WidgetBuilder>{
      '/': (BuildContext context) => HomePage(),
      'alert': (BuildContext context) => AlertsPage(),
      'avatar': (BuildContext context) => AvatarPage(),
      'card': (BuildContext context) => CardPage()
    };
