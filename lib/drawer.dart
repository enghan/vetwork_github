import 'package:flutter/material.dart';
import 'home.dart';
import 'UI/folder_style/ui_constants.dart';
class drawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      // TODO: implement build
        appBar: new AppBar(),
        drawer:  Drawer(
          child:  ListView(
            padding: EdgeInsets.only(top:30.0),
            children: <Widget>[

              ListTile(


                trailing: Icon(Icons.home),
                title: Text('Home'),

                onTap: () {
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (context) => new home()));

                },
              ),
              ListTile(
                trailing: Icon(Icons.person),
                title: Text('My Profile'),
                onTap: () {
                  // Update the state of the app
                  // ...
                },
              ),
              ListTile(
                trailing: Icon(Icons.pets),
                title: Text('My Pets'),
                onTap: () {
                  // Update the state of the app
                  // ...
                },
              ),
              ListTile(
                trailing: Icon(Icons.history),
                title: Text('History'),
                onTap: () {
                  // Update the state of the app
                  // ...
                },
              ),
              ListTile(
                trailing: Icon(Icons.local_offer),
                title: Text('Offers'),
                onTap: () {
                  // Update the state of the app
                  // ...
                },
              ),
              ListTile(
                trailing: Icon(Icons.room_service),
                title: Text('Request service'),
                onTap: () {
                  // Update the state of the app
                  // ...
                },
              ),
              new Divider(color:Colors.black38),
              ListTile(
                trailing: Icon(Icons.list),
                title: Text('Terms and Condition'),
                onTap: () {
                  // Update the state of the app
                  // ...
                },
              ),
              ListTile(
                trailing: Icon(Icons.help),
                title: Text('Help'),
                onTap: () {
                  // Update the state of the app
                  // ...
                },
              ),
              ListTile(
                trailing: Icon(Icons.message),
                title: Text('Contact Us'),
                onTap: () {
                  // Update the state of the app
                  // ...
                },
              ),
            ],
          ),

        )


    );
  }

}