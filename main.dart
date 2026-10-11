import 'package:flutter/material.dart';
import 'package:untitled/rowColumnExample.dart';

import '0.Scaffold.dart';
import '1.textExample.dart';
import '2.containerExample.dart';
import 'Task1.dart';
import 'Task2.dart';
import 'TaskExample.dart';
import 'boxDecorationExample.dart';
import 'buttonExample.dart';
import 'imageNetworkExample.dart';
import 'imageexample.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
     home: Task2(),
    );
  }
}




