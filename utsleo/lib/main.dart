import 'package:flutter/material.dart';
import 'makanan.dart';
import 'minuman.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Street Seafood 88',
      initialRoute: '/',
      routes: {
        '/': (context) => Main(),
        '/makanan': (context) => Makanan(),
        '/minuman': (context) => Minuman()
      },
      // home: Main(),
    );
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Street Seafood 88')),
      body: Center(child: Text('Agustinus Leonarli Pratama ')),
      backgroundColor: Colors.blueAccent,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(child: Text('')),
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("images/logo.jpg")),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("images/makanan.jpg"),
              ),
              title: Text('Makanan'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/makanan');
              },
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("images/minuman.jpg"),
              ),
              title: Text('Minuman'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/minuman');
              },
            ),
          ],
        ),
      ),
    );
  }
}
