import 'package:flutter/material.dart';

class ContentPage1 extends StatelessWidget {
  Map<String, String> names = {
    '05': 'Dum-Dum',
    '06': 'Matcha Boba',
    '07': 'Tiger Boba',
    '08': 'Starbucks',
  };
  Map<String, String> desc = {
    '05': '''  Minuman Boba asal Thailand''',
    '06': ''' Minuman Boba rasa Matcha''',
    '07': ''' Minuman Boba yang bernama Tiger Boba''',
    '08': ''' Minuman yang terkenal bernama Starbuck''',
  };

  final String value;
  // konstruktor
  ContentPage1({Key key, @required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minuman'),
        actions: <Widget>[],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'images/${this.value}.jpg',
              width: 500,
              height: 300,
              fit: BoxFit.fill,
            ),
            Container(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 15.0,
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(names[this.value],
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold)),
                      Text(
                        'Street Seafood 88, Serpong',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10.0,
                        ),
                      ),
                    ]),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                desc[this.value],
                style: TextStyle(
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.left,
                softWrap: true,
                overflow: TextOverflow.clip,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
