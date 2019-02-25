import 'package:flutter/material.dart';

class pet_profile extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<pet_profile> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(backgroundColor: Colors.amber),
        backgroundColor: Colors.white70,
        body:

          Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 10.0),
               child: Text(
                  'Save your pet',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),),
                Padding(
                  padding: EdgeInsets.only(top: 6.0, left: 7.0),
                  child: Text(
                    "Save your pet to your account for easier selection next time ",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black38),
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top: 60.0, left: 260.0)),
                    CircleAvatar(
                      radius: 80.0,
                      backgroundImage: AssetImage("assets/dog.jpg"),
                    ),
                    Text("Baxter",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30.0))
                  ],
                )
              ])


    );
  }
}
