import 'package:flutter/material.dart';

class Scaffoldexample extends StatelessWidget {
  const Scaffoldexample({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer:Drawer(),
      appBar:AppBar(
        title: Text('App1'),
        backgroundColor: Colors.black12 ,
      ),
      body: Container(
        color: Colors.blueAccent,
      ),
floatingActionButton: Container(
  color: Colors.red,
  height: 80,
  width: 80,
),
      bottomNavigationBar:Container(
        color: Colors.indigo,
        height: 80
        ,
      ) ,
    );
  }
}