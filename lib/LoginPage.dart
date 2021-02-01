import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthyindia/HomePageWithMediaQuery.dart';
import 'package:healthyindia/SignUp.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

class LoginPg extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return LoginState();
  }
}


class LoginState extends State<LoginPg> {
  SharedPreferences logindata;
  bool newuser;
  final phoneController = new TextEditingController();
  final pwdController = new TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    check_if_already_login();
  }

  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('login') ?? true);
    print(newuser);
    if (newuser == false) {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => HomePage()));
    }

  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    phoneController.dispose();
    pwdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(                           //return LayoutBuilder
        builder: (context, constraints) {
          return OrientationBuilder(                  //return OrientationBuilder
              builder: (context, orientation) {
                //initialize SizerUtil()
                SizerUtil().init(constraints, orientation);
                // TODO: implement build
                //throw UnimplementedError();
                return Scaffold(
                  body: Container(
                    child: ListView(
                      children: [
                        Container(
                            child: Stack(
                              children: <Widget>[
                                //stack overlaps widgets
                                Opacity(
                                  //semi red clippath with more height and with 0.5 opacity
                                  opacity: 0.5,
                                  child: ClipPath(
                                    clipper: WaveClipper(),
                                    //set our custom wave clipper
                                    child: Container(
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(

                                              colors: [
                                                Color(0xFFB621FE),
                                                //Color(0xFF00B800),
                                                Color(0xFF1FD1F9),
                                              ])),
                                      height: 200,
                                    ),
                                  ),
                                ),

                                ClipPath(
                                  //upper clippath with less height
                                  clipper: WaveClipper(),
                                  //set our custom wave clipper.
                                  child: Container(
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            colors: [
                                              Color(0xFFB621FE),
                                              //Color(0xFF00B800),
                                              Color(0xFF1FD1F9),
                                            ])),

                                    padding: EdgeInsets.only(bottom: 70),
                                    //color:Colors.deepOrange,
                                    child: Image.asset(
                                      'assets/images/healthLogo.png',
                                      height: 200,
                                      width: 200,
                                      //colorBlendMode: BlendMode.darken,
                                      fit: BoxFit.cover,
                                    ),
                                    height: 180,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ],
                            )),

                        ListTile(
                          title: Text("Lets get start",
                              style: TextStyle(
                                  color: ColorExtension('#8000ff').toColor(),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24)),
                        ),
                        ListTile(
                          title: TextField(
                            controller: phoneController,
                            decoration: InputDecoration(
                              labelText: 'Mobile Number',
                              labelStyle: TextStyle(
                                color: ColorExtension('#8000ff').toColor(),
                              ),
                            ),
                          ),
                        ),
                        ListTile(
                          title: TextField(
                            controller: pwdController,
                            decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                  color: ColorExtension('#8000ff').toColor(),
                                )),
                          ),
                        ),
                        //
                        ListTile(
                          title: Container(padding: const EdgeInsets.only(left: 100,right: 100,top: 45),
                            child: RaisedButton.icon(
                                onPressed: () {
                                  String username = phoneController.text;
                                  String password = pwdController.text;
                                  if (username != '' && password != '') {
                                    print('Successfull');
                                    logindata.setBool('login', false);
                                    logindata.setString('username', username);
                                    Navigator.push(context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage()));
                                  }
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(
                                        20.0))),
                                label: Text(
                                  'Login',
                                  style: TextStyle(color: Colors.white),
                                ),
                                icon: Icon(
                                  Icons.account_circle,
                                  color: Colors.white,
                                ),
                                textColor: Colors.white,
                                splashColor: Colors.red,
                                color: ColorExtension('#8000ff').toColor()),
                          ),
                        ),


                        ListTile(
                          title: Center(
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold),
                              )),
                        ),

                        ListTile(
                          title: Container(padding: const EdgeInsets.only(left: 100,right: 100,),
                            child: RaisedButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) =>
                                          SignUp()));
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(
                                        20.0))),
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(color: Colors.white),
                                ),
                                // icon: Icon(Icons.login_sharp, color:Colors.white,),
                                textColor: Colors.white,
                                splashColor: Colors.red,
                                color: ColorExtension('#8000ff').toColor()),
                          ),
                        ),

                        FlatButton(
                          onPressed: () {},
                          child: ListTile(
                            title: Center(
                              child: Image.network(
                                "https://cdn.iconscout.com/icon/free/png-512/laptop-user-1-1179329.png",
                                height: 50,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );

              }
          );
        }
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(
        0, size.height); //start path with this if you are making at bottom

    var firstStart = Offset(size.width / 5, size.height);
    //fist point of quadratic bezier curve
    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);
    //second point of quadratic bezier curve
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart =
    Offset(size.width - (size.width / 3.24), size.height - 90);
    //third point of quadratic bezier curve
    var secondEnd = Offset(size.width, size.height - 30);
    //fourth point of quadratic bezier curve
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(
        size.width, 0); //end with this path if you are making wave at bottom
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; //if new instance have different instance than old instance
    //then you must return true;
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

// SAVE Button
