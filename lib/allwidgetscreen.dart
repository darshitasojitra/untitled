import 'package:flutter/material.dart';

class allwidgetscreen extends StatefulWidget {
  const allwidgetscreen({super.key});

  @override
  State<allwidgetscreen> createState() => _allwidgetscreenState();
}

class _allwidgetscreenState extends State<allwidgetscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Widget Screen",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueAccent,
        actions: [
          PopupMenuButton(itemBuilder: (context)=>[
            PopupMenuItem(child: Row(
              children: [
                Icon(Icons.home),
                SizedBox(width: 15,),
                Text("Home"),
              ],
            )),
            PopupMenuItem(child: Row(
              children: [
                Icon(Icons.contact_page),
                SizedBox(width: 15,),
                Text("Contact"),
              ],
            )),
            PopupMenuItem(child: Row(
              children: [
                Icon(Icons.account_box_outlined),
                SizedBox(width: 15,),
                Text("Account"),
              ],
            )),
            PopupMenuItem(child: Row(
              children: [
                Icon(Icons.add_call),
                SizedBox(width: 15,),
                Text("call"),
              ],
            ))
          ])
        ],
      ),
      body: Column(
        children: [
          //BottomNavigationBar(items: )
        ],
      ),
    );
  }
}
