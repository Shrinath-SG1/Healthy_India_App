import 'package:flutter/material.dart';

class Appointment extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return AppointmentState();
  }

}
class AppointmentState extends State<Appointment>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text('Appointment'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: <Color> [
                    Color(0xFFB621FE),
                    //Color(0xFF00B800),
                    Color(0xFF1FD1F9),
                  ]
              )
          ),
        ),

      ),
      body: ListView(
      ),

    );
  }

}