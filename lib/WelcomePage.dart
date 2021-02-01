
import 'package:flutter/material.dart';
import 'package:healthyindia/Find.dart';
import 'package:healthyindia/size.dart';

class Welcome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return WelcomeState();
  }
}

class WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    Widget _potraitMode() {
      return Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            child: ListView(
              children: [
                ListTile(
                  title: Text(
                    "Choose The Doctor You Want",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                  ),
                ),
                Container(
                  child: Text(
                    "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
                    style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
                  ),
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 45, right: 280, top: 40),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Find_Doctor_Session()));
                    },
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    child: Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFFB621FE),
                              //Color(0xFF00B800),
                              Color(0xFF1FD1F9),
                            ],
                          ),
                          borderRadius:
                          BorderRadius.all(Radius.circular(80.0))),
                      padding: const EdgeInsets.fromLTRB(25, 9, 25, 9),
                      child: const Text('Get Started',
                          style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(00.0),
                    bottom: Radius.circular(40.0),
                  ),
                  child: Image.network(
                    'https://image.freepik.com/free-vector/doctor-character-background_1270-84.jpg',
                    height: displayHeight(context) * 0.70,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget _landScapeMode() {
      return Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            child: ListView(
              children: [
                ListTile(
                  title: Text(
                    "Choose The Doctor You Want",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                  ),
                ),
                Container(
                  child: Text(
                    "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
                    style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
                  ),
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 300, right: 350, top: 30,bottom: 30),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Find_Doctor_Session()));
                    },
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    child: Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFFB621FE),
                              //Color(0xFF00B800),
                              Color(0xFF1FD1F9),
                            ],
                          ),
                          borderRadius:
                          BorderRadius.all(Radius.circular(80.0))),
                      padding: const EdgeInsets.fromLTRB(78, 9, 78, 9),
                      child: const Text('Get Started',
                          style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(00.0),
                    bottom: Radius.circular(40.0),
                  ),
                  child: Image.network(
                    'https://image.freepik.com/free-vector/doctor-character-background_1270-84.jpg',
                    height: displayHeight(context),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return _potraitMode();
          } else {
            return _landScapeMode();
          }
        },
      ),
    );
  }
}

extension ColorExtension on String {
  toColor() {
    var hexColor = this.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}
