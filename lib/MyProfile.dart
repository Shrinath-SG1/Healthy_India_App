import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
class MyProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return MyProfState();
  }
}

class MyProfState extends State<MyProfile> {
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
  __Email() async {
    const url1 = 'mailto:shrinathsgavadoji@gmail.com';
    if (await launch(url1)) {
      await launch(url1);
    } else {
      throw 'Could not launch $url1';
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(//return LayoutBuilder
        builder: (context, constraints) {
          return OrientationBuilder(//return OrientationBuilder
              builder: (context, orientation) {
                // TODO: implement build
                SizerUtil().init(constraints, orientation);
                //throw UnimplementedError();
                return Scaffold(
                  appBar: AppBar(
                    title: Text('My Profile'),
                    centerTitle: true,shadowColor: Colors.deepPurpleAccent,
                    flexibleSpace: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: <Color>[
                                Color(0xFFB621FE),
                                //Color(0xFF00B800),
                                Color(0xFF1FD1F9),

                              ]
                          )
                      ),
                    ),

                  ),
                  body: ListView(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors:<Color>[
                                  Color(0xFFB621FE),
                                  //Color(0xFF00B800),
                                  Color(0xFF1FD1F9),

                                ]
                            )
                        ),
                        height: 200,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 80),
                              child: CircleAvatar(
                                radius: 30,
                                //backgroundColor: Color(0xffFDCF09),
                                child: CircleAvatar(
                                  radius: 40,
                                  backgroundImage: AssetImage('assets/images/Profile.jpg'),
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Container(child: Text('Shrinath SG',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18),),padding: const EdgeInsets.only(top: 80,left: 20),),
                                Container(child: Text('UI/UX Designer',style: TextStyle(color: Colors.white,fontSize: 15),),padding: const EdgeInsets.only(left: 28,top: 3,right: 12)),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        //color: Colors.tealAccent,
                        height: 90.0.w,
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30, bottom: 14,right: 280),
                            child: Text('Contact Info',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          ),
                          Container(
                            //color: Colors.pink,
                            padding: const EdgeInsets.only(top: 0, bottom: 0),
                            width: 92.0.w,
                            child: Card(
                                elevation: 10,
                                //color: Colors.lightGreen,
                                child: Column(
                                  children: [
                                    FlatButton(onPressed: (){},
                                      child: ListTile(
                                        title: Text('Name'),
                                        subtitle: Text('Shrinath SG'),
                                        leading: Icon(Icons.account_circle,color: Colors.green,size: 35,),
                                      ),
                                    ),
                                    FlatButton(onPressed: __Email,
                                      child: ListTile(
                                        title: Text('Email Id'),
                                        subtitle: Text('Shrinath@gmail.com'),
                                        leading: Icon(Icons.mail,color: Colors.lightBlueAccent,size: 35,),
                                      ),
                                    ),
                                    FlatButton(onPressed: __Phone,
                                      child: ListTile(
                                        title: Text('Phone'),
                                        subtitle: Text('+001384673007'),
                                        leading: Icon(Icons.phone_android_outlined,color: Colors.deepPurpleAccent,size: 35,),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          // Container(width: 300,
                          //   margin: const EdgeInsets.only(top: 20),
                          //   child:
                          //   RaisedButton(
                          //     colorBrightness: Brightness.dark,
                          //     shape:RoundedRectangleBorder(
                          //       borderRadius: BorderRadius.circular(20),
                          //     ) ,
                          //     color: Colors.purple,
                          //     onPressed: () {},
                          //     child: Text('Reset Password'),
                          //   ),
                          // ),
                          Container(margin: const EdgeInsets.only(top: 20),
                            child: RaisedButton(
                              onPressed: () {},
                              textColor: Colors.white,
                              padding: const EdgeInsets.all(0.0),
                              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                              child: Container(
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: <Color>[
                                        Color(0xFFB621FE),
                                        //Color(0xFF00B800),
                                        Color(0xFF1FD1F9),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(80.0))
                                ),
                                padding: const EdgeInsets.fromLTRB(80, 9, 80, 9),
                                child: const Text(
                                    'Reset Password',
                                    style: TextStyle(fontSize: 20)
                                ),
                              ),
                            ),
                          )
                        ]),
                      ),
                    ],
                  ),
                );
              }
          );
        }
    );
  }
}
