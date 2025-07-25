import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios), 
        title: Text('Home',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
        actions: [
          Icon(Icons.email),
          Icon(Icons.close)
        ],
        backgroundColor: Colors.blue
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 10,
          children: [
            Center(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
        
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
            Container(
                width: 100,
                height: 100,
                color: Colors.red
            ),
            Container(
                width: 100,
                height: 100,
                color: Colors.yellow
            ),
            Container(
                width: 100,
                height: 100,
                color: Colors.red
            ),
            Container(
                width: 100,
                height: 100,
                color: Colors.yellow
            ),
            Container(
                width: 100,
                height: 110,
                color: Colors.red
            ),
            Container(
                width: 100,
                height: 110,
                color: Colors.yellow
            )
        
          ],
        
        
        ),
      ),
    );
  }
}
