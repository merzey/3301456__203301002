import 'package:flutter/material.dart';

class Siparis extends StatefulWidget {
  const Siparis({Key? key}) : super(key: key);

  @override
  _SiparisState createState() => _SiparisState();
}

class _SiparisState extends State<Siparis> {
  ListTile siparis= ListTile();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Siparişleriniz'),
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
        body: ListView(

        )
        ,

      ),

    );
  }
}
