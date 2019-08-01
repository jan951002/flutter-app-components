import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: Icon(Icons.keyboard_backspace),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
        children: <Widget>[
          _getCardExample1(),
          SizedBox(
            height: 8.0,
          ),
          _getCardExample2()
        ],
      ),
    );
  }

  Widget _getCardExample1() => Card(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.card_membership),
              title: Text('Card title'),
              subtitle: Text('Card subtitle'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(onPressed: () {}, child: Text('Cancel')),
                FlatButton(onPressed: () {}, child: Text('OK'))
              ],
            ),
          ],
        ),
      );

  Widget _getCardExample2() => Card(
        child: Column(
          children: <Widget>[
            FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(
                  'https://media.wired.com/photos/5c1ae77ae91b067f6d57dec0/master/pass/Comparison-City-MAIN-ART.jpg'),
              fadeInDuration: Duration(milliseconds: 200),
              height: 250.0,
              fit: BoxFit.cover,
            ),
            Container(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text('Image text'),
                ))
          ],
        ),
      );
}
