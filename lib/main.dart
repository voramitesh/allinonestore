import 'dart:js';

import 'package:allinonestore/Screen/FIrstScreen.dart';
import 'package:allinonestore/Screen/Second.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>FirstPage(),
        '/second':(context)=>SecondPage(),
      },
    ),
  );

}