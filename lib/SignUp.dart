
import 'package:flutter/material.dart';
import 'package:healthyindia/LoginPage.dart';
import 'package:sizer/sizer.dart';

class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return SignState();
  }
}

class SignState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        // TODO: implement build
        SizerUtil().init(constraints, orientation);
        //throw UnimplementedError();
        return Scaffold(
          // floatingActionButton: FloatingActionButton(foregroundColor: Colors.lightBlueAccent,backgroundColor: Colors.purple,
          //   child: Icon(
          //     Icons.cancel_sharp,
          //     size: 25.0.sp,
          //   ),
          //   onPressed: () {
          //     Navigator.push(
          //         context, MaterialPageRoute(builder: (context) => LoginPg()));
          //   },
          // ),
          floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFFB621FE),
                    //Color(0xFF00B800),
                    Color(0xFF1FD1F9),
                  ],
                  //     begin: Alignment.topRight,
                  //     end: Alignment.bottomLeft,
                  //     stops: [
                  //   0.10,
                  //   0.6,
                  //   0.8,
                  //   0.4
                  // ],
                  //     colors: [
                  //   Colors.deepPurple[600],
                  //   Colors.purple,
                  //   Colors.purple,
                  //   Colors.grey
                )),
            //color: Colors.grey[100],
            child: ListView(
              children: [
                Container(
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
                  padding: const EdgeInsets.only(top: 0),
                  child: ClipOval(
                    child: Image.asset('assets/images/healthLogo.png',
                      height: 25.0.h,
                      width: 12.0.h,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "REGISTER",
                    style: TextStyle(
                        fontSize: 25.0.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                  padding: EdgeInsets.only(
                      left: 2.0.w, right: 0.0, bottom: 0.0),
                ),
                Container(
                  padding: EdgeInsets.all(2.0.h),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    obscureText: false,
                    decoration: InputDecoration(
                      //border: OutlineInputBorder(),
                        labelText: 'First Name',
                        labelStyle: TextStyle(
                            color: Colors.white, fontSize: 13.0.sp)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(2.0.h),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Last Name',
                        labelStyle:
                        TextStyle(color: Colors.white, fontSize: 13.0.sp)
                      //  prefixIcon: Icon(Icons.remove_red_eye),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(2.0.h),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    obscureText: false,
                    decoration: InputDecoration(
                      //border: OutlineInputBorder(),
                        labelText: 'Email',
                        labelStyle: TextStyle(
                            color: Colors.white, fontSize: 13.0.sp)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(2.0.h),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle:
                        TextStyle(color: Colors.white, fontSize: 13.0.sp)
                      //  prefixIcon: Icon(Icons.remove_red_eye),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPg()));
                        },
                        child: Text("CREATE ACCOUNT"),
                        color: Colors.lightGreenAccent[400],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      });
    });
  }
}
