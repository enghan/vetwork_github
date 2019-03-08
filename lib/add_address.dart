
import 'package:flutter/material.dart';
import 'UI/folder_style/AppStyles.dart';
import 'UI/folder_style/ui_constants.dart';
class add_address extends StatelessWidget{
  final Widget child;
  add_address({Key key, this.child}) : super(key: key);
  BuildContext _context;
  bool Visit_check = false;
  bool priority_check = false;
  @override
  Widget build(BuildContext context) {
    _context = context;
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body:
      pagecontainer (),
    );

  }
  Widget pagecontainer(){
    return Padding(padding: EdgeInsets.all(page_padding),
        child: Column(children: <Widget>[Padding(padding: EdgeInsets.only(top: 20.0),
          child:cancel_back(),
        ),


        build_request_informaiton(),

        build_name_input(),


        build_phone_input(),

        build_check("Schedual Visit", Visit_check),
        build_check("Priority Service", priority_check),
        build_location(),
        ],)
    );

  }
  Widget build_request_informaiton() {
    return Padding(
        padding: EdgeInsets.only(
            top: top_padding, left: page_margin, bottom: page_padding),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Request Information',
                style: welcometextStyle,
              ),
              Padding(
                padding: EdgeInsets.only(top: top_padding),
                child: Text(
                  "finish your request by adding the information displayed now ",
                  style: textStyleH5,
                ),
              )
            ]));
  }

  Widget build_name_input(){

    return SingleChildScrollView(child: Container(

      child:  TextField(scrollPadding: EdgeInsets.all(5.0),
        decoration: InputDecoration(
          labelText: "NAME :" , hintText: "Owner's name" ,hintStyle: TextStyle(color: Colors.black),
        ),
        keyboardType: TextInputType.text,
      ),

    )
    );
  }
  Widget build_phone_input(){

    return Container(

      child:
      TextField(
        decoration: InputDecoration(
          hintText: "xxxxxxxx",labelText: "phone :" ,
          prefix: Text("+20 " ,style: textStyleH2,), suffix:build_iconcard(Icons.verified_user,"Verify" ) ,
        ),
        keyboardType: TextInputType.number,
      ),);}
  Widget build_iconcard(IconData myicon, String name) {
    var card = Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: InkWell(
          onTap: () {
            showDialog(
                context: _context,
                builder: (ctxt) =>  AlertDialog(
                  title: Text("Text Dialog"),
                )
            );

          },
          child: Padding(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "$name",
                    style: textStyleH4a,
                  ),
                  Icon(
                    myicon,
                    size: 16.0,
                  ),
                ]),
            padding: EdgeInsets.all(page_padding),
          ),
        ));
    return SizedBox(width: 81.0, height: 40.0, child: card);
  }
  Widget build_location(){
    return Container(child:Padding(padding: EdgeInsets.all(page_padding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Location",style: textStyleH2,),
            SizedBox(height: 10.0,),
            Container(child:Row(children: <Widget>[
              Icon(Icons.add_location ,size: 60.0),
              Text("set your \taddress on the map  for faster visit")
            ],) )
          ],
        )
    ));
  }
  Widget cancel_back() {
    return Stack(
      children: <Widget>[
        Align(
            alignment: Alignment.topRight,
            child: build_iconcard(Icons.clear,"Cancel")
        ),

        Align(
          alignment: Alignment.topLeft,
          child:build_iconcard(Icons.arrow_back,"Back"),
        ),

      ],
    );
  }
  Widget build_check(String title, bool boolValue) {
    return Container(
        child: Padding(
          padding: EdgeInsets.only(left: page_margin),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Checkbox(
                value: boolValue,
                onChanged: (bool value) {},
              ),
              Text(title),
            ],
          ),
        ));
  }
}
