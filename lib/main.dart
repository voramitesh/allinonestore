import 'package:flutter/material.dart';

import 'Screen/FIrstScreen.dart';
import 'Screen/Second.dart';
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