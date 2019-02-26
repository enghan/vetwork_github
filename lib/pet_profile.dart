import 'package:flutter/material.dart';
import 'home.dart';

class pet_profile extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<pet_profile> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(backgroundColor: Colors.amber),
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                'Save your pet',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 6.0, left: 7.0, bottom: 35.0),
              child: Text(
                "Save your pet to your account for easier \t selection next time ",
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38),
              ),
            ),
            Center(child: Image.asset('assets/dog.jpg')),
            Center(
                child: Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text("Baxter",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30.0)))),
            Center(
                child: Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text("Information",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35.0,
                            color: Colors.blue)))),

            Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 60.0 ,top: 15.0),
                  child:Text('Male'),

                ),
                Padding(padding: EdgeInsets.only(left: 160.0,top: 15.0),
                  child:Icon(Icons.account_balance),

                ),
                Padding(padding: EdgeInsets.only(right: 100.0,top: 15.0),
                    child: Text("7Kg")

                ),


              ],
            ),
            Center(
              child:GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/home');

                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Card(
                    color: Colors.black12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60.0),
                    ),

                    child: new Column(
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.check,
                              size: 20.0,
                              color: Colors.white,
                            )),
                      ],
                    ),

                  ),
                ),),),

          ],
        )



//
    );
  }
}
