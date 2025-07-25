import 'package:flutter/material.dart';
class dropdownPopup extends StatefulWidget {
  const dropdownPopup({super.key});

  @override
  State<dropdownPopup> createState() => _dropdownPopupState();
}

class _dropdownPopupState extends State<dropdownPopup> {
  String dropdownvalue='Baroda';
  var xyz=['Baroda',
  'rajkot',
  'surat',
  'pune'];

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
         PopupMenuButton(itemBuilder: (context)=>[
           PopupMenuItem(child: Row(
             children: [
               Icon(Icons.home),
             SizedBox(width: 10,),
               Text("Home")
             ],
           )),
           PopupMenuItem(child: Row(
             children: [
               Icon(Icons.account_circle),
               SizedBox(width: 10),
               Text("account_circle")
             ],
           )),
           PopupMenuItem(child: Row(
             children: [
               Icon(Icons.add_a_photo),
               SizedBox(width: 10,),
               Text("add_a_photo")
             ],
           ))
         ])
       ],
      ),
      body: Container(
        margin: EdgeInsets.all(40),
        child: DropdownButton(
          value: dropdownvalue,
          icon: Icon(Icons.keyboard_arrow_down),
            items: xyz.map((String city){
              return DropdownMenuItem(
                  child: Text(city),
              value: city);
            }).toList(),
            onChanged: (String? newvalue){
            setState(() {
              dropdownvalue=newvalue!;
            });
            }),
      ),
    );
  }
}
