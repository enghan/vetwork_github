import 'package:flutter/material.dart';
import 'drawer .dart';
import 'home.dart';

import 'pet_profile.dart';
import 'request_information.dart';
import 'add_address.dart';

void main() => runApp(MaterialApp(
      home: drawer(),
    routes : {
  '/drawer': (context) => drawer(),
  '/home': (context) => home(),
  '/pet_profile': (context) => pet_profile(),
  '/request_information': (context) => request_information(),
  '/add_address' : (context) => add_address(),
},
    ));
