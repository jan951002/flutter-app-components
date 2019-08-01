import 'package:flutter/material.dart';
import 'package:flutter_app_components/providers/menu_providers.dart';
import 'package:flutter_app_components/utils/icons_util.dart';

import 'avatar_page.dart';

class HomePage extends StatelessWidget {
  final List<String> listNames = ['name1', 'name2', 'name3', 'name4', 'name5'];
  final menuProviders = MenuProviders();
  final iconsUtil = IconsUtil();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          centerTitle: true,
        ),
        body: _loadData());
  }

  Widget _loadData() {
    return FutureBuilder(
      future: menuProviders.loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        if (snapshot.data != null) {
          return ListView(
            children: _showList(snapshot.data, context),
          );
        } else {
          return ListView(children: _showList([], context));
        }
      },
    );
  }

  List<Widget> _showList(List<dynamic> data, BuildContext context) =>
      data.map((item) {
        return Column(
          children: <Widget>[
            ListTile(
              title: Text(item['texto']),
              subtitle: Text('Subtitle'),
              leading: iconsUtil.getIconByString(item['icon']),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.blue,
              ),
              onTap: () {
                Navigator.pushNamed(context, item['ruta']);
              },
            ),
            Divider()
          ],
        );
      }).toList();
}
