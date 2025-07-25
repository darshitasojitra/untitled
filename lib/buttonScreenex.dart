import 'package:flutter/material.dart';

import 'buttonScreen.dart';
import 'columWidget.dart';
import 'ex1.dart';

class buttonscreen2 extends StatefulWidget {
  const buttonscreen2({super.key});

  @override
  State<buttonscreen2> createState() => _buttonscreen2State();
}

class _buttonscreen2State extends State<buttonscreen2> {
  String dropdownvalue = 'Rajkot';
  var abc = ['Rajkot', 'baroda', 'jtpr', 'surat', 'pune'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ButtonScreen",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        actions: [
          //PopupMenuButton
          PopupMenuButton(
              itemBuilder: (context) => [
                    PopupMenuItem(
                        child: Row(
                      children: [
                        Icon(Icons.star),
                        SizedBox(width: 10),
                        Text("popup1")
                      ],
                    )),
                    PopupMenuItem(
                        child: Row(
                      children: [
                        Icon(Icons.star),
                        SizedBox(width: 10),
                        Text("popup2")
                      ],
                    )),
                    PopupMenuItem(
                        child: Row(
                      children: [
                        Icon(Icons.star),
                        SizedBox(width: 10),
                        Text("popup3")
                      ],
                    )),
                PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(Icons.star),
                        SizedBox(width: 10),
                        Text("popup4")
                      ],
                    )),

                  ]),
        ],
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Buttonscreen()));
              },
              child: Text("Elevated button")),

          //DropdownButton
          Container(
            child: DropdownButton(
              value: dropdownvalue,
                icon: Icon(Icons.keyboard_arrow_down),
                items: abc.map((String city) {
                  return DropdownMenuItem(
                    child: Text(city),
                    value: city,
                  );
                }).toList(),
                onChanged: (String? newvalue) {
                  setState(() {
                    dropdownvalue = newvalue!;
                  });
                }),
          ),

          //InkwellButton
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => widgetex()));
            },
            child: Container(
              height: 100,
              width: 100,
              color: Colors.black,
              child: Center(
                  child: Text(
                'InkWellButton',
                style: TextStyle(color: Colors.white),
              )),
            ),
          ),

          //IconButton
          Container(

            child: IconButton(
              iconSize: 40,
                tooltip: "add",
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>columWidget()));
                }, icon: Icon(Icons.add)),
          ),
          
          //outlinebutton
          Container(
            child: OutlinedButton(
              style:OutlinedButton.styleFrom(
    backgroundColor: Colors.yellow
    ),
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>columWidget()));
                }, child: Text("Outlinebutton")),
          ),


          //ButtonBar
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.tealAccent),
                  onPressed: (){}, child: Text("Ok")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.tealAccent),
                  onPressed: (){}, child: Text("Cancle"))
            ],
          )
        ],
      ),
    );
  }
}
