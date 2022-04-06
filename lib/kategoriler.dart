import 'package:flutter/material.dart';
import 'package:vize_odevi/takilar.dart';
import 'makrome.dart';
import 'sabunlar.dart';
import 'battaniyeler.dart';
import 'oyuncaklar.dart';

class Kategoriler extends StatefulWidget {
  const Kategoriler({Key? key}) : super(key: key);

  @override
  _KategorilerState createState() => _KategorilerState();
}

class _KategorilerState extends State<Kategoriler> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        title: Text('Kategoriler'),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Geri Dön',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: ListView(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Oyuncaklar()));
            },
            child: ListTile(
              title: Text('Amigurumi Oyuncak'),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Battaniye()),);
            },
            child: ListTile(
              title: Text('Bebek Battaniyesi'),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Sabun()),);
            },
            child: ListTile(
              title: Text('Keçeli Sabun'),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Makrome()),);
            },
            child: ListTile(
              title: Text('Makrome Ürünler'),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Taki()),);
            },
            child: ListTile(
              title: Text('Takılar'),
            ),
          ),
        ],
      ),
    ));
  }
}
