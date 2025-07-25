import 'package:flutter/material.dart';

class widgetex extends StatefulWidget {
  const widgetex({super.key});

  @override
  State<widgetex> createState() => _widgetexState();
}

class _widgetexState extends State<widgetex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text('Home',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),
          actions: [
            Icon(Icons.email),
            Icon(Icons.close)
          ],
          backgroundColor: Colors.pinkAccent
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 170,
                  height: 150,
                  color: Colors.brown,
                ),
                Container(
                  width: 170,
                  height: 150,
                  color: Colors.brown,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height:160,
                color: Colors.lightGreenAccent,

                   child: Row(
                     children: [
                     Container(
                     width: 100,
                     height:100,
                     color: Colors.black26,

                   ),
                  ],
                 )
              ),
                ],
              )
            ],
          )
      );
  }
}
