import 'package:flutter/material.dart';

class singlechildwidget extends StatefulWidget {
  const singlechildwidget({super.key});

  @override
  State<singlechildwidget> createState() => _singlechildwidgetState();
}

class _singlechildwidgetState extends State<singlechildwidget> {
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
          backgroundColor: Colors.blueGrey
        ),
      body:Column
        (

        spacing: 10,
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              spacing: 10,
              children: [
                Container(

                  width: 130,
                  height: 100,
                  color: Colors.blueGrey,
                  child: Row(
                   children: [

                     Icon(Icons.star_border),
                     Container(
                       width: 75,
                       height: 35,
                       color: Colors.white,
                       child: Text('Darshi',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                     ),

                   ],
                  ),
                ),
                Container(
                  width: 130,
                  height: 100,
                  color: Colors.grey,
                ),
                Container(
                  width: 130,
                  height: 100,
                  color: Colors.blueAccent,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                Container(
                  width: 130,
                  height: 100,
                  color: Colors.blueGrey,
                ),
                Container(
                  width: 130,
                  height: 100,
                  color: Colors.grey,
                ),
                Container(
                  width: 130,
                  height: 100,
                  color: Colors.blueAccent,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              spacing: 10,
            //  crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 160,
                  height: 120,
                  color: Colors.grey,

                ),
                Container(
                  width: 160,
                  height: 120,
                  color: Colors.blueAccent,
                ),

              ],
            ),
          )
        ],

      )
    );
  }
}
