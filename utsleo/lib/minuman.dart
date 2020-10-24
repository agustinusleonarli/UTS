import 'package:flutter/material.dart';
import 'ContentPage1.dart';

class Minuman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Main();
  }
}

/// This is the stateless widget that the main application instantiates.
class Main extends StatelessWidget {
  List<String> names = [
    '05',
    '06',
    '07',
    '08',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Minuman'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(names.length, (index) {
          return GridTile(
            child: GestureDetector(
              child: Container(
                margin: const EdgeInsets.all(5.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/' + names[index] + '.jpg'),
                )),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return ContentPage1(value: names[index]); // kirim data
                }));
              },
            ),
          );
        }),
      ),
    );
  }
}
