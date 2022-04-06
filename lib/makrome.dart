import 'package:flutter/material.dart';

import 'urunsayfasi.dart';

class Makrome extends StatefulWidget {
  const Makrome({Key? key}) : super(key: key);

  @override
  _MakromeState createState() => _MakromeState();
}

class _MakromeState extends State<Makrome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Makrome Ürünler'),
            centerTitle: true,
            backgroundColor: Colors.red,
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
          body: Column(
            children: <Widget>[
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
                                    Image.asset('assets/images/makrome1.png')),
                            Text('Makrome Anahtarlık Yaprak',style: TextStyle(color:Colors.black)),
                            Text('12 TL',style: TextStyle(color:Colors.black)),
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
                              child: Image.asset('assets/images/makrome2.png')),
                          Text('Makrome Anahtarllık Gökkuşağı',style: TextStyle(color:Colors.black),),
                          Text('12 TL',style: TextStyle(color:Colors.black)),
                          ElevatedButton(
                              onPressed: () {}, child: Text('Sipariş Oluştur'))
                        ],
                      ),
                    )),
                  ],
                ),
              ),
              SizedBox(height: 300, width: 300)
            ],
          ),
        ),
      ),
    );
  }
}
