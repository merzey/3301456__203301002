import 'package:flutter/material.dart';

import 'urunsayfasi.dart';

class Sabun extends StatefulWidget {
  const Sabun({Key? key}) : super(key: key);

  @override
  _SabunState createState() => _SabunState();
}

class _SabunState extends State<Sabun> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('Keçeli Sabunlar'),
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
                                child: Image.asset('assets/images/sabun1.png')),
                            Text('Keçe Sabun Balık',
                                style: TextStyle(color: Colors.black)),
                            Text('20 TL',
                                style: TextStyle(color: Colors.black)),
                            ElevatedButton(
                                onPressed: () {},
                                child: Text('Sipariş Oluştur'))
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
                          MaterialPageRoute(
                              builder: (context) => UrunSayfasi()),
                        );
                      },
                      child: Column(
                        children: <Widget>[
                          Expanded(
                              child: Image.asset('assets/images/sabun2.png')),
                          Text(
                            'Keçe Sabun Kuş',
                            style: TextStyle(color: Colors.black),
                          ),
                          Text('20TL', style: TextStyle(color: Colors.black)),
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
                                child: Image.asset('assets/images/sabun3.png')),
                            Text('Keçe Sabun Balonlar',
                                style: TextStyle(color: Colors.black)),
                            Text('20 TL',
                                style: TextStyle(color: Colors.black)),
                            ElevatedButton(
                                onPressed: () {},
                                child: Text('Sipariş Oluştur'))
                          ],
                        ),
                      ),
                    ),
                    //SizedBox(height: 300, width: 300)
                  ],
                ),
              ),
            ])));
  }
}
