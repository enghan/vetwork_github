import 'package:flutter/material.dart';
import 'home.dart';
import 'drawer .dart';
import 'pet_profile.dart';
import 'request_information.dart';
void main() => runApp(
    MaterialApp(

        home :  mainInterface(),
routes: {

  '/mainInterface': (context) => mainInterface(),

  '/home': (context) => home(),
    'pet_profile' :(context) => pet_profile(), '/request_information': (context) => request_information(),
},
)
    );


