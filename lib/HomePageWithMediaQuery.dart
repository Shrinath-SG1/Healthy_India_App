
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthyindia/Appointment.dart';
import 'package:healthyindia/BMI.dart';
import 'package:healthyindia/Find.dart';
import 'package:healthyindia/LoginPage.dart';
import 'package:healthyindia/MyProfile.dart';
import 'package:healthyindia/SignUp.dart';
import 'package:healthyindia/WelcomePage.dart';
import 'package:healthyindia/size.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'AboutUs.dart';

import 'Hospitals.dart';
class HomePage extends StatefulWidget {



  @override
  State<StatefulWidget> createState() {

    // TODO: implement createState
    //throw UnimplementedError();
    return HomeState();
  }
}

class HomeState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Doctors',
      style: optionStyle,
    ),
    Text(
      'Blog',
      style: optionStyle,
    ),
    Text(
      'Indicator',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget _potraitMode() {
      return Stack(fit: StackFit.expand, children: <Widget>[
        FractionallySizedBox(
          child: Container(
            child: ListView(
              children: <Widget>[
                Container(
                  child: Text(
                    "Hello ,",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  padding: const EdgeInsets.only(left: 10,top: 20),
                ),
                Container(
                  child: Text(
                    "How Can We Take Care Yourself?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.grey[500]),
                  ),
                  padding: const EdgeInsets.only(
                      left: 12.0, right: 0.0, top: 20.0, bottom: 0.0),
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 80.0, bottom: 30.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 35),
                              child: Column(
                                children: [
                                  FlatButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Welcome()));
                                    },
                                    child: Container(
                                      child: Column(
                                        children: [
                                          ListTile(
                                            leading: Icon(
                                              Icons.account_circle,
                                              size: 40.0,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0.0,
                                                right: 45.0,
                                                top: 20.0,
                                                bottom: 0.0),
                                            child: Text(
                                              "Find Doctor",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0.0,
                                                right: 46.0,
                                                top: 2.0,
                                                bottom: 0.0),
                                            child: Text(
                                              "210 Doctors",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                      //
                                      //
                                      height: displayHeight(context) * 0.18,
                                      width: displayWidth(context) * 0.35,
                                      //alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.indigoAccent[100],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: displayHeight(context)*0.030,
                                  ),
                                  FlatButton(onPressed: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Appointment()));
                                  },
                                    child: Container(
                                      child: Column(
                                        children: [
                                          ListTile(
                                            leading: Icon(
                                              Icons.add_to_photos,
                                              size: 40.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0.0,
                                                right: 45.0,
                                                top: 20.0,
                                                bottom: 0.0),
                                            child: Text(
                                              "Appointment",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Colors.white),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0.0,
                                                right: 46.0,
                                                top: 2.0,
                                                bottom: 0.0),
                                            child: Text(
                                              "60 Available",
                                              style:
                                              TextStyle(color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                      height: displayHeight(context) * 0.18,
                                      width: displayWidth(context) * 0.35,
                                      //alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(padding: const EdgeInsets.only(top: 35),
                            child: Column(
                              children: [
                                FlatButton(onPressed: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Hospitals()));
                                },
                                  child: Container(
                                    child: Column(
                                      children: [
                                        ListTile(
                                          leading: Icon(Icons.apartment_outlined,
                                              size: 40.0, color: Colors.white),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 0.0,
                                              right: 45.0,
                                              top: 20.0,
                                              bottom: 0.0),
                                          child: Text(
                                            "Find Hospital",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                                color: Colors.white),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 0.0,
                                              right: 46.0,
                                              top: 2.0,
                                              bottom: 0.0),
                                          child: Text(
                                            "30 Hospitals",
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                    height: displayHeight(context) * 0.18,
                                    width: displayWidth(context) * 0.35,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: displayHeight(context)*0.03,
                                ),
                                FlatButton(onPressed: (){

                                },
                                  child: Container(
                                    child: Column(
                                      children: [
                                        ListTile(
                                          leading: Icon(
                                              Icons.calendar_today_outlined,
                                              size: 40.0,
                                              color: Colors.white),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 0.0,
                                              right: 50.0,
                                              top: 20.0,
                                              bottom: 0.0),
                                          child: Text(
                                            "Drug List",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                                color: Colors.white),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 0.0,
                                              right: 46.0,
                                              top: 2.0,
                                              bottom: 0.0),
                                          child: Text(
                                            "22 Lists",
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                    height: displayHeight(context) * 0.18,
                                    width: displayWidth(context) * 0.35,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    height: displayHeight(context),
                    width: displayWidth(context),
                  ),
                ),
                Container(
                  child: Center(
                    child: _widgetOptions.elementAt(_selectedIndex),
                  ),
                )
              ],
            ),
            height: displayHeight(context),
            width: displayWidth(context),
          ),
        ),
      ]);
    }

    Widget _landScapeMode() {
      return Stack(fit: StackFit.expand, children: <Widget>[
        FractionallySizedBox(
          child: Container(
            child: ListView(
              children: <Widget>[
                Container(
                  child: Text(
                    "Hello ,",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  padding: const EdgeInsets.all(8.0),
                ),
                Container(
                  child: Text(
                    "How Can We Take Care Yourself?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.grey[500]),
                  ),
                  padding: const EdgeInsets.only(
                      left: 12.0, right: 0.0, top: 0.0, bottom: 0.0),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 132.0, top: 0.0, bottom: 30.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Column(
                              children: [
                                FlatButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Welcome()));
                                  },
                                  child: Container(
                                    child: Container(
                                      child: Column(children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 80, top: 4),
                                          child: Icon(Icons.account_circle,
                                              size: 40.0, color: Colors.white),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 0.0,
                                              right: 50.0,
                                              top: 10.0,
                                              bottom: 0.0),
                                          child: Text(
                                            "Find Doctors",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                                color: Colors.white),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 0.0,
                                              right: 60.0,
                                              top: 2.0,
                                              bottom: 0.0),
                                          child: Text(
                                            "210 Doctors",
                                            style:
                                            TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ]),
                                      height: displayHeight(context) * 0.30,
                                      width: displayWidth(context) * 18,
                                    ),
                                    height: displayHeight(context) * 0.24,
                                    width: displayWidth(context) * 0.24,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.indigoAccent[100],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: displayHeight(context) * 0.038,
                                ),
                                Container(
                                  child: Container(
                                    child: Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 80, top: 4),
                                        child: Icon(Icons.add_to_photos_sharp,
                                            size: 40.0, color: Colors.white),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 0.0,
                                            right: 50.0,
                                            top: 10.0,
                                            bottom: 0.0),
                                        child: Text(
                                          "Appointment",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 0.0,
                                            right: 60.0,
                                            top: 2.0,
                                            bottom: 0.0),
                                        child: Text(
                                          "60 Available",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ]),
                                    height: displayHeight(context) * 0.30,
                                    width: displayWidth(context) * 18,
                                  ),
                                  height: displayHeight(context) * 0.24,
                                  width: displayWidth(context) * 0.24,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          height: displayHeight(context) * 0.90,
                          //color: Colors.deepOrange,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                child: Container(
                                  child: Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 80, top: 4),
                                      child: Icon(Icons.apartment,
                                          size: 40.0, color: Colors.white),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 0.0,
                                          right: 50.0,
                                          top: 10.0,
                                          bottom: 0.0),
                                      child: Text(
                                        "Find Hospital",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 0.0,
                                          right: 60.0,
                                          top: 2.0,
                                          bottom: 0.0),
                                      child: Text(
                                        "30 Hospitals",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ]),
                                  height: displayHeight(context) * 0.30,
                                  width: displayWidth(context) * 18,
                                ),
                                height: displayHeight(context) * 0.24,
                                width: displayWidth(context) * 0.24,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[700],
                                ),
                              ),
                              SizedBox(
                                height: displayHeight(context)*0.038,
                              ),
                              Container(
                                child: Container(
                                  child: Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 80, top: 4),
                                      child: Icon(Icons.calendar_today_outlined,
                                          size: 40.0, color: Colors.white),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 0.0,
                                          right: 50.0,
                                          top: 10.0,
                                          bottom: 0.0),
                                      child: Text(
                                        "Drug List",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 0.0,
                                          right: 60.0,
                                          top: 2.0,
                                          bottom: 0.0),
                                      child: Text(
                                        "22 Lists",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ]),
                                  height: displayHeight(context) * 0.24,
                                  width: displayWidth(context) * 18,
                                ),
                                height: displayHeight(context) * 0.24,
                                width: displayWidth(context) * 0.24,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                          height: displayHeight(context) * 0.90,
                          //color: Colors.yellow,
                        ),
                      ],
                    ),
                  ),
                  height: displayHeight(context),
                  width: displayWidth(context),
                ),
                Container(
                  child: Center(
                    child: _widgetOptions.elementAt(_selectedIndex),
                  ),
                )
              ],
            ),
            height: displayHeight(context),
            width: displayWidth(context),
          ),
        ),
      ]);
    }

    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text("Health Care"),
        centerTitle: true,
        //backgroundColor: Colors.indigoAccent[100],
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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/drawerImage.jpg"),
                    fit: BoxFit.cover),
              ),
              accountName: Text("Shrinath SG"),
              accountEmail: Text("shrinath@gmail.com"),
              currentAccountPicture: CircleAvatar(
                // backgroundColor:
                // Theme.of(context).platform == TargetPlatform.android
                //     ? Colors.blue
                //     : Colors.white,
                // child: Text(
                //   "A",
                //   style: TextStyle(fontSize: 40.0),
                // ),
                child: ClipOval(
                  child: Image.network(
                    'https://images.unsplash.com/photo-1521572267360-ee0c2909d518?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                  ),
                ),
                // backgroundImage: NetworkImage("https://images.unsplash.com/photo-1480429370139-e0132c086e2a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"
                //   ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("My Profile"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) => MyProfile()));
              },
            ),
            ListTile(
              leading: Icon(Icons.login_sharp),
              title: Text("Register"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) => SignUp()));
              },
            ),
            ListTile(
              leading: Icon(Icons.calculate_outlined),
              title: Text("Calculate BMI"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) => BmiCalc()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person_outline_sharp),
              title: Text("Doctor"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) => Find_Doctor_Session()));
              },
            ),
            ListTile(
              leading: Icon(Icons.account_balance),
              title: Text("About"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) => About()));
              },
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 0.0, right: 0.0, top: 0.0, bottom: 0.0),
              child: ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("Logout"),
                  onTap: () async {
                    SharedPreferences preferences = await SharedPreferences.getInstance();
                    await preferences.remove('login');

                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => LoginPg()));
                  }
              ),
            ),
          ],
        ),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return _potraitMode();
          } else {
            return _landScapeMode();
          }
        },
      ),
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar
          canvasColor: const Color(0xFF6d8cd7),
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline_outlined),
              label: 'Doctors',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.airplay),
              label: 'Blog',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.apps_rounded,
              ),
              label: 'Indicators',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
