
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthyindia/DoctorDetails.dart';
import 'package:sizer/sizer.dart';

import 'WelcomePage.dart';
//import 'package:sizer/sizer_util.dart';

// ignore: camel_case_types
class Find_Doctor_Session extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Find_Doctor_State();
  }
}

// ignore: camel_case_types
class Find_Doctor_State extends State<Find_Doctor_Session> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(//return LayoutBuilder
        builder: (context, constraints) {
          return OrientationBuilder(//return OrientationBuilder
              builder: (context, orientation) {
                // TODO: implement build
                SizerUtil().init(constraints, orientation);
                SizerUtil().init(constraints, orientation);

                return SafeArea(
                  child: Scaffold(
                    body: ListView(children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Text(
                                        "Find Your Desired Doctor",
                                        style: TextStyle(
                                            color: Colors.deepPurple,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30),
                                      )),
                                ],
                              ),
                              padding:
                              // const EdgeInsets.only(top: 35, left: 22, right: 5),
                              EdgeInsets.symmetric(vertical: 3.0.h, horizontal: 3.0.h),

                            ),
                            Container(
                              child: ListTile(
                                title: TextFormField(
                                  decoration: new InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding:
                                      const EdgeInsets.only(bottom: 15.0),
                                      hintText: "Search for doctors"),
                                ),
                                trailing: Container(
                                  width: 60,
                                  height: 50,
                                  margin: EdgeInsets.only(bottom: 10, left: 0),
                                  child: Icon(
                                    Icons.search,
                                    color: Colors.white,
                                  ),
                                  padding: const EdgeInsets.only(bottom: 0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.lightBlueAccent),
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(50),
                              ),
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              margin: const EdgeInsets.only(
                                  left: 10, right: 10, top: 38, bottom: 14),
                              height: 45,
                              //padding: EdgeInsets.symmetric(vertical: 5.0.h, horizontal: 3.0.h),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      "Categories",
                                      style: TextStyle(
                                          color: Colors.deepPurple,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              padding: const EdgeInsets.only(
                                left: 15,
                                top: 30,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 25, bottom: 10),
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  Container(
                                    child: Card(
                                        elevation: 4,
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            FractionalTranslation(
                                              translation: Offset(0.4, -0.3),
                                              child: Align(
                                                child: Container(
                                                  height: 65,
                                                  width: 60,
                                                  child: Image.asset(
                                                    'assets/images/Tooth.png',
                                                  ),
                                                  decoration: BoxDecoration(
                                                      color: Colors.blue,
                                                      borderRadius:
                                                      BorderRadius.circular(10)),
                                                  padding:
                                                  const EdgeInsets.only(left: 0),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                "Dental \nSurgeon",
                                                style: TextStyle(color: Colors.purple),
                                              ),
                                              padding: const EdgeInsets.only(
                                                  top: 0, right: 20, left: 10),
                                              margin: const EdgeInsets.only(
                                                  top: 0, right: 0, left: 0),
                                            ),
                                          ],
                                        )),
                                    padding: const EdgeInsets.only(left: 10, top: 25),
                                  ),
                                  Container(
                                    child: Card(
                                        elevation: 3,
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            FractionalTranslation(
                                              translation: Offset(0.4, -0.3),
                                              child: Align(
                                                child: Container(
                                                  height: 65,
                                                  width: 60,
                                                  child: Image.asset(
                                                      'assets/images/heart.png'),
                                                  decoration: BoxDecoration(
                                                      color: Colors.orange,
                                                      borderRadius:
                                                      BorderRadius.circular(10)),
                                                  padding:
                                                  const EdgeInsets.only(left: 0),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                "heart \nSurgeon",
                                                style: TextStyle(color: Colors.purple),
                                              ),
                                              padding: const EdgeInsets.only(
                                                  top: 0, right: 20, left: 10),
                                              margin: const EdgeInsets.only(
                                                  top: 0, right: 0, left: 0),
                                            ),
                                          ],
                                        )),
                                    padding: const EdgeInsets.only(left: 10, top: 25),
                                  ),
                                  Container(
                                    child: Card(
                                        elevation: 3,
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            FractionalTranslation(
                                              translation: Offset(0.4, -0.3),
                                              child: Align(
                                                child: Container(
                                                  height: 65,
                                                  width: 60,
                                                  child: Image.asset(
                                                      "assets/images/eye.png"),
                                                  decoration: BoxDecoration(
                                                      color: Colors.tealAccent,
                                                      borderRadius:
                                                      BorderRadius.circular(10)),
                                                  padding:
                                                  const EdgeInsets.only(left: 0),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                "Eye \nSpecialist",
                                                style: TextStyle(color: Colors.purple),
                                              ),
                                              padding: const EdgeInsets.only(
                                                  top: 0, right: 20, left: 10),
                                              margin: const EdgeInsets.only(
                                                  top: 0, right: 0, left: 0),
                                            ),
                                          ],
                                        )),
                                    padding: const EdgeInsets.only(left: 10, top: 25),
                                  ),
                                  Container(
                                    child: Card(
                                        elevation: 3,
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            FractionalTranslation(
                                              translation: Offset(0.4, -0.3),
                                              child: Align(
                                                child: Container(
                                                  height: 65,
                                                  width: 60,
                                                  child: Image.asset(
                                                      "assets/images/skin.png"),
                                                  decoration: BoxDecoration(
                                                      color: Colors.yellow,
                                                      borderRadius:
                                                      BorderRadius.circular(10)),
                                                  padding: const EdgeInsets.only(
                                                      left: 0, top: 15),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                "Skin \nSpecialist",
                                                style: TextStyle(color: Colors.purple),
                                              ),
                                              padding: const EdgeInsets.only(
                                                  top: 0, right: 20, left: 10),
                                              margin: const EdgeInsets.only(
                                                  top: 0, right: 0, left: 0),
                                            ),
                                          ],
                                        )),
                                    padding: const EdgeInsets.only(left: 10, top: 25),
                                  ),
                                ],
                              ),
                              // padding: const EdgeInsets.only(top: 20),
                              margin: const EdgeInsets.only(
                                top: 20,
                              ),
                              height: 170,
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20, bottom: 10),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      "Top Doctors",
                                      style: TextStyle(
                                          color: Colors.deepPurple,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              padding: const EdgeInsets.only(left: 15, top: 10),
                            ),
                            Container(
                              child: ListView(
                                children: <Widget>[
                                  FlatButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              Doctor_Details_Session(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      height: 90,
                                      child: ListTile(
                                        leading: Container(
                                          child: Image.network(
                                            "https://image.freepik.com/free-vector/doctor-character-background_1270-84.jpg",
                                            height: 40,
                                            width: 40,
                                          ),
                                        ),
                                        title: Text(
                                          "Dr. Stella Kane",
                                          style: TextStyle(
                                              color: Colors.deepPurple,
                                              fontWeight: FontWeight.bold ),
                                        ),
                                        subtitle: Text(
                                          "Heart Surgeon - Flower Hospitals",
                                          style: TextStyle(color: Colors.deepPurple),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.blue[50],
                                          borderRadius: BorderRadius.circular(20)),
                                      padding: const EdgeInsets.all(6),
                                      margin: const EdgeInsets.only(bottom: 5),
                                    ),
                                    padding: const EdgeInsets.all(0),
                                  ),
                                  FlatButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              Doctor_Details_Session(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      height: 90,
                                      child: ListTile(
                                        leading: Container(
                                          child: Image.network(
                                            "https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX17937315.jpg",
                                            height: 40,
                                            width: 40,
                                          ),
                                        ),
                                        title: Text(
                                          "Dr. Joseph Cart",
                                          style: TextStyle(
                                              color: Colors.deepPurple,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        subtitle: Text(
                                          "Dental Surgeon - Flower Hospitals",
                                          style: TextStyle(color: Colors.deepPurple),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.yellow[100],
                                          borderRadius: BorderRadius.circular(20)),
                                      padding: const EdgeInsets.all(6),
                                      margin: const EdgeInsets.only(bottom: 5),
                                    ),
                                    padding: const EdgeInsets.all(0),
                                  ),
                                  FlatButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Welcome(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      height: 90,
                                      child: ListTile(
                                        leading: Container(
                                          child: Image.network(
                                            "https://previews.123rf.com/images/morys/morys2003/morys200300008/143676787-cartoon-style-smiling-doctor-with-crossed-hands-medic-character-isolated-on-white-happy-doctor-vecto.jpg",
                                            height: 40,
                                            width: 40,
                                          ),
                                        ),
                                        title: Text(
                                          "Dr. John phillip",
                                          style: TextStyle(
                                              color: Colors.deepPurple,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        subtitle: Text(
                                          "Eye Specialist - Moon Hospitals",
                                          style: TextStyle(color: Colors.deepPurple),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.tealAccent[100],
                                          borderRadius: BorderRadius.circular(20)),
                                      padding: const EdgeInsets.all(6),
                                      margin: const EdgeInsets.only(bottom: 5),
                                    ),
                                    padding: const EdgeInsets.all(0),
                                  ),
                                  FlatButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Welcome(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      height: 90,
                                      child: ListTile(
                                        leading: Container(
                                          child: Image.network(
                                            "https://static.turbosquid.com/Preview/2016/12/15__03_56_26/doc_15.jpg9DEAFE01-9EB5-40F8-A1CB-E4842AC9E7CEDefaultHQ.jpg",
                                            height: 40,
                                            width: 40,
                                          ),
                                        ),
                                        title: Text(
                                          "Dr. Joseph Cart",
                                          style: TextStyle(
                                              color: Colors.deepPurple,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        subtitle: Text(
                                          "Dental Surgeon - Flower Hospitals",
                                          style: TextStyle(color: Colors.deepPurple),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.amberAccent[100],
                                          borderRadius: BorderRadius.circular(20)),
                                      padding: const EdgeInsets.all(6),
                                      margin: const EdgeInsets.only(bottom: 5),
                                    ),
                                    padding: const EdgeInsets.all(0),
                                  ),
                                ],
                              ),
                              margin:
                              const EdgeInsets.only(top: 10, left: 20, right: 20),
                              height: 50.0.h,
                            ),
                          ],
                        ),
                        height: 160.0.h,
                      ),
                    ]),
                    appBar: AppBar(
                      //backgroundColor: Colors.blueAccent[300],
                      flexibleSpace: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: <Color>[
                              Color(0xFFB621FE),
                              //Color(0xFF00B800),
                              Color(0xFF1FD1F9),
                            ])),
                      ),
                    ),
                  ),
                );
              });
        });
  }
}
