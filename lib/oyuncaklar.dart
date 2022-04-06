import 'package:flutter/material.dart';

import 'urunsayfasi.dart';

class Oyuncaklar extends StatefulWidget {
  const Oyuncaklar({Key? key}) : super(key: key);

  @override
  _OyuncaklarState createState() => _OyuncaklarState();
}

class _OyuncaklarState extends State<Oyuncaklar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Amigurumi Oyuncaklar'),
            backgroundColor: Colors.pinkAccent[200],
            centerTitle: true,
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Geri Dön'))
            ],
          ),
          body: Column(children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UrunSayfasi()),
                        );
                      },
                      child: Column(
                        children: <Widget>[
                          Expanded(
                              child:
                                  Image.asset('assets/images/amigurumi1.png')),
                          Text('Amigurumi Kuzu',
                              style: TextStyle(color: Colors.black)),
                          Text('150 TL', style: TextStyle(color: Colors.black)),
                          ElevatedButton(
                              onPressed: () {}, child: Text('Sipariş Oluştur'))
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UrunSayfasi()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Expanded(
                            child: Image.asset('assets/images/amigurumi2.png')),
                        Text(
                          'Amigurumi Bebek',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text('150TL', style: TextStyle(color: Colors.black)),
                        ElevatedButton(
                            onPressed: () {}, child: Text('Sipariş Oluştur'))
                      ],
                    ),
                  )),
                ],
              ),
            ),
            Divider(height: 30),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      onPressed: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UrunSayfasi()),
                        );
                      },
                      child: Column(
                        children: <Widget>[
                          Expanded(
                              child:
                                  Image.asset('assets/images/amigurumi3.png')),
                          Text('Amigurumi Kubağa Kermit',
                              style: TextStyle(color: Colors.black)),
                          Text('150 TL', style: TextStyle(color: Colors.black)),
                          ElevatedButton(
                              onPressed: () {}, child: Text('Sipariş Oluştur'))
                        ],
                      ),
                    ),
                  ),
                  //SizedBox(height: 300, width: 300)
                ],
              ),
            ),
          ])),
    );
  }
}
