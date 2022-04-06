import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class Iletisim extends StatelessWidget {
  const Iletisim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('İletişim Bilgileri'),
          backgroundColor: Colors.green[200],
          centerTitle: true,
          actions: [
           TextButton(onPressed: (){
             Navigator.pop(context);
           },
               child: Text('Geri Dön',style: TextStyle(color: Colors.white),))
         
          ],
        ),
        body: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              SizedBox(
                width: 400,
                child: Card(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.email, color: Colors.green[400]),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'hayalelisi@gmail.com',
                        style: TextStyle(color: Colors.green[200]),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 400,
                child: Card(shadowColor: Colors.green[900],
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.phone, color: Colors.green[400]),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: <Widget>[
                          InkWell(
                            onTap:(){
                              yonlendir('tel:05555959595');
                            },
                            child: Text(
                              '0 555 595 95 95',
                              style: TextStyle(color: Colors.green[200]),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              yonlendir('tel:033232134');
                            },
                            child: Text(
                              '0 332 321 34',
                              style: TextStyle(color: Colors.green[200]),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
void yonlendir(islem)async{
  if(await canLaunch(islem)){
    await launch(islem);
  }
  else{
    print('Yönlendirilemedi...');
  }
}