import 'package:flutter/material.dart';
import 'home.dart';
import 'drawer .dart';
import 'pet_profile.dart';
void main() => runApp(
    MaterialApp(

        home :  mainInterface(),
routes: {

  '/mainInterface': (context) => mainInterface(),

  '/home': (context) => home(),
    'pet_profile' :(context) => pet_profile(),
} ,
)
    );


