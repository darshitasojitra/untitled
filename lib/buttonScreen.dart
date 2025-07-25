import 'package:flutter/material.dart';

import 'container.dart';

class Buttonscreen extends StatefulWidget {
  const Buttonscreen({super.key});

  @override
  State<Buttonscreen> createState() => _ButtonscreenState();
}

class _ButtonscreenState extends State<Buttonscreen> {
  String dropdownvalue = 'Rajkot';
  
  var abc = [
    'Rajkot',
    'Ahmedabad',
    'Surat',
    'Jamnagar',
    'Pune',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ButtonScreen"),
        actions: [
          PopupMenuButton<int>(
              itemBuilder: (context)=>[
                PopupMenuItem(

                    child: Row(
                  children: [
                    Icon(Icons.star),
                    SizedBox(width: 10,),
                    Text("popup1"),
                  ],
                )),
                PopupMenuItem(

                    child: Row(
                  children: [
                    Icon(Icons.star),
                    SizedBox(
                      width: 10,
                    ),
                    Text("popup2")
                  ],
                )),
                PopupMenuItem(

                    child: Row(
                  children: [
                    Icon(Icons.star),
                    SizedBox(
                      width: 10,
                    ),
                    Text("popup3")
                  ],
                )),

              ])

        ],
      ),
      body: Column(
        children: [
          //elevated button work
            Container(
                child: ElevatedButton(onPressed: (){}, child: Text("ElevatedButton"))),
          // dropdown button work
          Container(
            child:  DropdownButton(

              // Initial Value
              value: dropdownvalue,

              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),
              items: abc.map((String city ){
                return DropdownMenuItem(
                  child: Text(city),
                  value: city,);
              }).toList(),

              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
                      ),
          // icon button work
          Container(
            child: IconButton(
              iconSize: 50,
                tooltip: "add",
                onPressed: (){
                }, icon:Icon(Icons.add)),
          ),
          //inkwell button

          InkWell(
            onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> containerwidget()));
            },
            child: Container(
              height: 100,
              width: 100,
              color: Colors.purple,
              alignment: Alignment.center,
              child: Text("InkwellButton",style: TextStyle(color: Colors.white),),
            ),
          ),
          
          //outline  button
          
          Container(
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: (){},
                child: Text("OutlineButton")),
          ),

          //button bar

          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: (){}, child:Text("Button1")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: (){}, child:Text("Button2")),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text("F_Action"),),
    );
  }
}
