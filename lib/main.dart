import 'package:flutter/material.dart';
import 'package:flutter_app_components/pages/alerts_page.dart';
import 'package:flutter_app_components/routes/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getAppRoutes(),
      onGenerateRoute: (settings) =>
          MaterialPageRoute(builder: (BuildContext context) => AlertsPage()),
    );
  }
}
