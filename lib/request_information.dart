import 'package:flutter/material.dart';
class request_information extends StatefulWidget {
  @override
  _State createState() => new _State();
}
bool isChecked = false;
class _State extends State<request_information> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

        appBar: AppBar(backgroundColor: Colors.amber),
      backgroundColor: Colors.white,
        body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
    Padding(
    padding: EdgeInsets.only(left: 10.0 , top: 5.0),
    child: Text(
    'Request Information',
    style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
    ),
    ),
    Padding(
    padding: EdgeInsets.only(top: 6.0, left: 7.0, bottom: 35.0),
    child: Text(
    "finish your request by adding the information \t displayed now ",
    style: TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: Colors.black38),
    ),
    ),

Column(
  children: <Widget>[

    Row(
      children: <Widget>[

        Checkbox(
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = value;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0 ),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: new Container(
              width:300.0 ,
              height: 90.0,
              child:Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Checkupfnfujffffyy \t kmjnhtrind\tojdndgteo",
                  style: TextStyle(fontSize: 14.0),
                ),

              ),
            ),
          ),
        ),],),
      Padding(
        padding: const EdgeInsets.only(left: 70.0 ,top: 15.0),
        child:
    Row(
      children: <Widget>[
       new GestureDetector(
            onTap: () {},

            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: new Container(
                width: 150.0,
                child: new Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "Add new address",
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 4.0),
                      child: Icon(
                        Icons.add,
                        size: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    ),),
  ],),
    Padding(
    padding: const EdgeInsets.only(left: 70.0),
    child:
          Row(
    children: <Widget>[

    Checkbox(
    value: isChecked,
    onChanged: (value) {
    setState(() {
    isChecked = value;
    });
    },
    ),
    Padding(
    padding: const EdgeInsets.all(5.0),
    child: Text(
    "Requesr service later",
    style: TextStyle(fontSize: 14.0),
    ),
    ),
       ])),
    Align(
      alignment: Alignment.bottomCenter,


    ),

     ],
    ),


persistentFooterButtons: <Widget>[
  //Align(
//  alignment: Alignment.bottomCenter,
//  child: Row(
//    children: <Widget>[
//
//      Padding(
//        padding: const EdgeInsets.only(top: 10.0, left: 30.0 ,right: 30.0),
//        child: SizedBox(
//          width: 380.0,
//          height: 60.0,
//          child:
 SizedBox(
  width: 450.0,
  height: 60.0,
  child: new Padding(padding: EdgeInsets.only(left:20.0 ,right: 20.0),
  child:  RaisedButton(
    child: new Text('Next' ,style: TextStyle(color: Colors.grey)),
    onPressed: (){},
  ),
  )
),
        ]);
//      ),
//    ],
//  ),


    }}