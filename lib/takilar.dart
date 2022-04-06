import 'package:flutter/material.dart';

import 'urunsayfasi.dart';

class Taki extends StatefulWidget {
  const Taki({Key? key}) : super(key: key);

  @override
  _TakiState createState() => _TakiState();
}

class _TakiState extends State<Taki> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Takılar'),
            centerTitle: true,
            backgroundColor: Colors.deepOrangeAccent,
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
                              child: Image.asset('assets/images/taki1.png')),
                          Text('Bileklik Sarı-Mavi-Beyaz',
                              style: TextStyle(color: Colors.black)),
                          Text('20 TL', style: TextStyle(color: Colors.black)),
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
                        Expanded(child: Image.asset('assets/images/taki2.png')),
                        Text(
                          'Bileklik Set',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text('50TL', style: TextStyle(color: Colors.black)),
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
                              child: Image.asset('assets/images/taki3.png')),
                          Text('Bileklik Kolye Set',
                              style: TextStyle(color: Colors.black)),
                          Text('60 TL', style: TextStyle(color: Colors.black)),
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
