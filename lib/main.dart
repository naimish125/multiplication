import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';
import 'SecondPage.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => User(),
        'second':(context) => Home(),
      },
    ),
  );
}