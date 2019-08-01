import 'package:flutter/services.dart';
import 'dart:convert';

class MenuProviders {
  List<dynamic> options = [];

  Future<List<dynamic>> loadData() async {
    final response = await rootBundle.loadString('data/menu_opts.json');
    Map map = json.decode(response);
    options = map['rutas'];
    return options;
  }
}
