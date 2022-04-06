import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:draggable_fab/draggable_fab.dart';
import 'package:vize_odevi/siparisler.dart';
import 'package:vize_odevi/takilar.dart';
import 'kategoriler.dart';
import 'iletisimbilgileri.dart';
import 'oyuncaklar.dart';



void main() {

  runApp(MaterialApp(home: elisi()));
}

class elisi extends StatefulWidget {
   elisi({Key? key}) : super(key: key);

  @override
  _elisiState createState() => _elisiState();
}

class _elisiState extends State<elisi> {
  TextEditingController textController = TextEditingController();

String arama="";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(

          appBar: AppBar(
            title: Text('HAYAL ELİŞİ'),
            backgroundColor: Colors.purple[200],
            actions: [

                AnimSearchBar(
                    color: Colors.purple[400],
                    autoFocus: false,
                    closeSearchOnSuffixTap: true,
                    helpText: 'Nasıl Yardımcı Olabiliriz?',
                    suffixIcon: Icon(Icons.search),
                    width: 400,
                    textController: textController,
                    onSuffixTap: () {
                      setState(() {

                        arama=textController.text.toString();
                        if(arama.contains("Amigurumi")){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Oyuncaklar()),);

                        }
                      });
                    }),
            ]
              ),
          body:Column(children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Oyuncaklar()),);
                  },
                  child: Row(
                    children: <Widget>[
                      Image.asset('assets/images/amigurumi1.png'),
                      const SizedBox(
                        width: 30,
                      ),
                      Text(
                        'BUGÜNE ÖZEL ALIŞVERİŞLERİNİZDE %15 İNDİRİM!..',
                        style: TextStyle(
                          color: Colors.purple[900],
                          fontFamily: 'Pacifico',
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),

                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Taki()),);
                  },
                  child: Row(
                    children: <Widget>[
                      Image.asset('assets/images/taki1.png'),
                      const SizedBox(
                        width: 30,
                      ),
                      Text(
                        'TAKILARIMIZA  GÖZ ATTINIZ MI?..',
                        style: TextStyle(
                          color: Colors.purple[900],
                          fontFamily: 'Pacifico',
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              color: Colors.purple[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      tooltip:'Kategoriler',
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Kategoriler()),);
                      }, icon: const Icon(Icons.list,color:Colors.white)),
                  IconButton(

                      tooltip: 'Anasayfa',
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => elisi()),);
                      }, icon: const Icon(Icons.home,color:Colors.white)),
                  IconButton(
                      tooltip: 'Siparişleriniz',
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Siparis()),);
                      }, icon:  const Icon(Icons.shopping_bag,color:Colors.white)),
                  IconButton(
                      tooltip:'Hesap',
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Kategoriler()),);
                      }, icon: const Icon(Icons.person,color:Colors.white)),

                ],),
            )
          ]
          ),

          floatingActionButton: SafeArea(
            child: DraggableFab(
              child: FloatingActionButton(
                tooltip: 'İletişim',
                backgroundColor: Colors.purple[400],
                onPressed: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Iletisim()),);
                },
                child: const Icon(Icons.call),
              ),
            ),
          ),
        ),
      )
    );
  }
}




