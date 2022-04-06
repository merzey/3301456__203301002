import 'package:flutter/material.dart';
import 'package:vize_odevi/urunsayfasi.dart';

class Battaniye extends StatefulWidget {
  const Battaniye({Key? key}) : super(key: key);

  @override
  _BattaniyeState createState() => _BattaniyeState();
}

class _BattaniyeState extends State<Battaniye> {

  int index=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Battaniye'),
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
          body: Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(

                          child: FlatButton(
                            onPressed: (){

                               Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => UrunSayfasi()),);
                            },
                            child: Column(
                      children: <Widget>[
                            Expanded(
                                child: Image.asset('assets/images/battaniye1.png')),
                            Text('Puset Bebek Battaniyesi'),
                            Text('150 TL'),
                            ElevatedButton(onPressed: (){}, child: Text('Sipariş Oluştur'))
                      ],
                    ),
                          ),
                        ),
                    Expanded(
                        child: FlatButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => UrunSayfasi()),);
                          },
                          child: Column(
                      children: <Widget>[
                          Expanded(child: Image.asset('assets/images/battaniye2.png')),
                          Text('Renkli Bebek Battaniyesi'),
                          Text('150 TL'),
                        ElevatedButton(onPressed: (){}, child: Text('Sipariş Oluştur'))
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
void yonlendir(){

}