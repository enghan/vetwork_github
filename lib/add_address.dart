import 'package:flutter/material.dart';
class add_address extends StatefulWidget {
  @override
  _State createState() => new _State();
}
bool isChecked = false;
bool isChecked2 = false;
MediaQueryData queryData;

class _State extends State<add_address > {
  @override
  Widget build(BuildContext context) {  final media = MediaQuery.of(context);

  return  Scaffold(
    resizeToAvoidBottomPadding: false,
    body: Center(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(35.0, 100.0, 20.0, 100.0),
                    child: Text('hello', style: TextStyle(fontSize: 80.0 , fontWeight: FontWeight.bold
                    ),
                    ),

                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 80.0  , left : 27.0 , right : 20.0),

              // child: SingleChildScrollView(
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                //mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.email),
                        labelText: 'EMAIL :' ,
                        labelStyle: TextStyle(

                            fontFamily: 'Montserrat' ,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:BorderSide(color: Colors.blue)

                        )

                    ),
                  ) ,
                  SizedBox(height:30.0   ),
                  TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.vpn_key),
                        labelText: 'PASSWORD :' ,
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat' ,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:BorderSide(color: Colors.blue)

                        )

                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 100.0) ,
                  Container(height: 40.0,
                    child: Material(

                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.lightBlueAccent,
                      color: Colors.blue,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: (){},
                        child: Center(
                          child: Text('LOGIN' ,style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold
                              ,fontFamily: 'Montserrat'),
                          ),
                        ),
                      ),
                    ),),
                  SizedBox( height: 45.0, ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center ,
                    children: <Widget>[
                      Text('New to our application ?' , style: TextStyle( fontFamily: 'Montserrat'
                      ) ,),
                      SizedBox (width: 5.0,) ,
                      InkWell(onTap: (){

                       },
                        child:  Text('Register' , style: TextStyle(color: Colors.blue ,
                            fontFamily: 'Montserrat' ,
                            fontWeight: FontWeight.bold ,
                            decoration: TextDecoration.underline
                        ),),)
                    ],
                  )
                ],
              ),
            ),


            // )
          ],
        ),
      ),
    ),
  );
  }}