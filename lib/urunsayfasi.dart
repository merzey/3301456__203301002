import 'package:flutter/material.dart';



class UrunSayfasi extends StatefulWidget {
   UrunSayfasi(  {Key? key}) : super(key: key);
   
  


  @override
  _UrunSayfasiState createState() => _UrunSayfasiState();
}

class _UrunSayfasiState extends State<UrunSayfasi> {

  
   int index=0;

   
   List<String>resimler=[
  'amigurumi1',
  'amigurumi2',
  'amigurumi3',
  'battaniye1',
  'battaniye2',
  'makrome1',
  'makrome2',
  'makrome3',
  'sabun1',
  'sabun2',
  'sabun3',
  'taki1',
  'taki2',
  'taki3',


];
  List <String>amigurumi=[
    'amigurumi1.png',
    'amigurumi2.png',
    'amigurumi3.png'
  ];
  List <String>battaniye=[
    'battaniye1.png',
    'battaniye2.png',
  ];
  List <String>makrome=[
    'makrome1.png',
    'makrome2.png',
    'makrome3.png'
  ];
  List <String>sabun=[
    'sabun1.png',
    'sabun2.png',
    'sabun3.png',
  ];
  List <String>taki=[
    'taki1.png',
    'taki2.png',
    'taki3.png',
  ];






  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Scaffold(
         appBar: AppBar(
           title: Text('Ürün Bigileri'),
           centerTitle: true,
           backgroundColor: Colors.blueGrey,
           actions: [
             TextButton(onPressed: (){
               Navigator.pop(context);
             },
                 child: Text('Geri Dön'))
           ],
         ),
         body: Column(children: <Widget>[

           Expanded(child: Image.asset('assets/images/'+resimler[index]+'.png')),
           Divider(height: 30),
           Text('')
         ],),
       ),
    );
  }
}
