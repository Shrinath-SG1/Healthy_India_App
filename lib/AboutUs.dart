import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class About extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return AboutState();
  }

}
class AboutState extends State<About>{
  Future<void> _launched;
  String _phone = '';
  _launchURL() async {
    const url = 'https://flutter.dev';
    if (await launch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  __Email() async {
    const url1 = 'mailto:shrinathsgavadoji@gmail.com';
    if (await launch(url1)) {
      await launch(url1);
    } else {
      throw 'Could not launch $url1';
    }
  }
  __Phone() async {
    const url2 = 'tel:8867006901';
    if (await launch(url2)) {
      await launch(url2);
    } else {
      throw 'Could not launch $url2';
    }
  }
  __Sms() async {
    const url3 = 'sms:8867006901';
    if (await launch(url3)) {
      await launch(url3);
    } else {
      throw 'Could not launch $url3';
    }
  }



  @override
  Widget build(BuildContext context) {


    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color(0xFFB621FE),
                //Color(0xFF00B800),
                Color(0xFF1FD1F9),
              ],
            ),
            borderRadius: BorderRadius.all(Radius.circular(0.0))
        ),
        child: ListView(
          children: [
            Container(
              child: Image.network('https://image.freepik.com/free-vector/isometric-online-medical-diagnostics-doctors-workplace-isometric-icons-laptop-x-ray-patient-medical-record-prescriptions-online-illustration_108855-1954.jpg',fit: BoxFit.cover,),
            ),
            ListTile(
              title: Text('1234 Chicago Ave Chicago IL 087363'),
            ),
            Container(
              child: Row(
                children: [
                  FlatButton( onPressed: __Email,
                    child: Container(
                      child: Icon(Icons.mail,color: Colors.white,size: 35,),
                      padding: const EdgeInsets.only(top: 50,left: 60),
                    ),
                  ),
                  FlatButton(onPressed: __Phone,
                    child: Container(
                      child: Icon(Icons.phone,color: Colors.orange,size: 35,),
                      padding: const EdgeInsets.only(left: 30,top: 50),
                    ),
                  ),
                  FlatButton(onPressed: _launchURL,
                    child: Container(
                      child: Icon(Icons.add_link,color: Colors.pink[600],size: 35,),
                      padding: const EdgeInsets.only(left: 30,top: 50),
                    ),
                  ),
                  FlatButton(onPressed: __Sms,
                    child: Container(
                      child: Icon(Icons.sms,color: Colors.lime,size: 35,),
                      padding: const EdgeInsets.only(left: 30,top: 50),
                    ),
                  ),
                ],
              ),

            ),

          ],
        ),
      ),

    );
  }

}