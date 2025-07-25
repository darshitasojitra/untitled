import 'package:flutter/material.dart';

class containerwidget extends StatefulWidget {
  const containerwidget({super.key});

  @override
  State<containerwidget> createState() => _containerwidgetState();
}

class _containerwidgetState extends State<containerwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('Home',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
        
      backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          //height: 200,
         // width: 200,
          decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.circular(8),
            boxShadow:[
              new BoxShadow(color: Colors.deepPurpleAccent,offset:Offset(3, 5))
            ],
            border: Border.all(color: Colors.brown,width: 3),

          ),
          constraints: BoxConstraints.expand(height: 150.0,width: 150.0) ,
        //  transform:Matrix4.rotationZ(0.1),
         // padding: EdgeInsets.only(top: 10,right: 10),
        margin: EdgeInsets.all(10),
        child: Center(child: Text('Hello',style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),)),
        ),
      ),
    );
  }
}
