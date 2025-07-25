import 'package:flutter/material.dart';

class Myhomepage extends StatefulWidget {
  const Myhomepage({super.key});

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Icon(Icons.arrow_back),
        title: Text('Myhomepage',style:TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),),
        actions: [
          Icon(Icons.search,color: Colors.white,),
          Icon(Icons.email,color: Colors.white,),
        ],
      ),
      body: Container(
        height: 100,
        width: 100,
        color: Colors.amberAccent,
        child: Center(child: Text("My Container")),

      ),
    );
  }
}
