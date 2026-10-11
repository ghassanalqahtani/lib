import 'package:flutter/material.dart';

import 'myTextFormField.dart';


class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Task'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(12.0),
        child: Form(child: Column(
          children: [
            myTextFormField(name:"Username"),
            const SizedBox(
              height: 20,
            ),
            myTextFormField(name:"Password"),
          const SizedBox(
            height: 20,
          ),
            myTextFormField(name:"Email"),
          const SizedBox(
            height: 20,
          ),
            myTextFormField(name:"Age"),
          const SizedBox(
            height: 20,
          ),
            ElevatedButton(onPressed: (){}, child: Text('Submit')),
            const SizedBox(height: 10,),
          ],
        ),)

      ),
    );
  }
  }

