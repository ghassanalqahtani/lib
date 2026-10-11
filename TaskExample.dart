import 'package:flutter/material.dart';

class Taskexample extends StatelessWidget {
  const Taskexample({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer:Drawer(),
      appBar:AppBar(
        title: Text('App'),
        backgroundColor: Colors.black12 ,
      ),
        body: Container(
    padding: EdgeInsets.symmetric(horizontal: 100,vertical: 50),
    margin: EdgeInsets.only(top: 300,left: 60),
    decoration:BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(50)
    ) ,
    child: Text('Welcome',style: TextStyle(
    fontSize: 20,
    color: Colors.blue
    ),
    ),
    ),
        floatingActionButton: Container(
          color: Colors.lightBlue,
          height: 80,
          width: 500,
        ),
        bottomNavigationBar:Container(
            color: Colors.indigo,
            height: 80
        ),
    );
  }
}