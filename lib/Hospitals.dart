import 'package:flutter/material.dart';
class Hospitals extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return HospitalState();
  }

}
class HospitalState extends State<Hospitals>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text('Hospital List'),
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
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Moon Hospital'),
              subtitle: Text('Los Angeles , California'),
              tileColor: Colors.lime,
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1586773860418-d37222d8fce3?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Asster CMI Hospital'),
              subtitle: Text('cxy 012 California'),
              tileColor: Colors.cyan[200],
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1560582861-45078880e48e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=634&q=80'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('The Johns Hopkins Hospital'),
              subtitle: Text('Eon street , California'),
              tileColor: Colors.pink[100],
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1586773860383-dab5f3bc1bcc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1313&q=80'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Toronto General Hospital'),
              subtitle: Text('New Jersey'),
              tileColor: Colors.purpleAccent[100],

              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage('https://mk0ehealtheletsj3t14.kinstacdn.com/wp-content/uploads/2009/07/best-hospital-in-south-india.jpg'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Rochester'),
              subtitle: Text('jerry syx street,Miami'),
              tileColor: Colors.lightBlue[200],
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage('https://www.healthcareitnews.com/sites/hitn/files/Hospital-HITN.jpg'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('The Johns Hopkins Hospital'),
              subtitle: Text('Eon street , California'),
              tileColor: Colors.pink[100],
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1586773860383-dab5f3bc1bcc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1313&q=80'),
              ),
            ),
          ),

        ],
      ),

    );
  }

}