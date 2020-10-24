import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  Map<String, String> names = {
    '01': 'Fuyunghai',
    '02': 'Kuwe Asam Manis',
    '03': 'Udang Saus Padang',
    '04': 'Ikan Bakar',
  };
  Map<String, String> desc = {
    '01': '''  Fuyunghai campuran telor yang digoreng menggunakan KOL + Sagu''',
    '02': ''' Ikan Kuwe Dengan Saos Asam Manis''',
    '03': ''' Udang dengan Saos Padang''',
    '04': ''' Ikan Gurame dengan Bumbu Bakar  ''',
  };

  final String value;
  // konstruktor
  ContentPage({Key key, @required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Makanan'),
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
