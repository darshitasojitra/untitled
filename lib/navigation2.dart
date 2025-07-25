import 'package:flutter/material.dart';
import 'package:untitled/xyz.dart';

class navigationex extends StatefulWidget {
  const navigationex({super.key});

  @override
  State<navigationex> createState() => _navigationexState();
}

class _navigationexState extends State<navigationex> {
  int _selectedindex=0;
  static const TextStyle optionStyle= TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.blueAccent);
        List<Widget> _widgetOptions=<Widget>[
          singlechildwidget(),
        Text('Contact',style: optionStyle,),
        Text('Message',style: optionStyle,),
        Text('Gallery',style: optionStyle,),
      ];
      void onItemTapped(int index)
      {
        setState(() {
          _selectedindex=index;
        });
      }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Row(
                children: [
                  Text('Dashboard',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text('add',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),),
            ),
            ListTile(
              leading: Icon(Icons.contact_page),
              title: Text('Contact',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),),
            ),
            ListTile(
              leading: Icon(Icons.calendar_month),
              title: Text('Calender',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),),
            ),
            ListTile(
              leading: Icon(Icons.account_balance_sharp),
              title: Text('account_balance',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),),
            ),
            ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text('alarm',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),),
            ),
            ListTile(
              leading: Icon(Icons.add_a_photo),
              title: Text('Photo',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),),
            ),
          ],
        ),
      ),
      appBar: AppBar(

        title: Text('Home',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
        actions: [
         Icon(Icons.email,color: Colors.white),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.close,color: Colors.white,),
          ),

        ],
        backgroundColor: Colors.blue,
      ),
      body:
      Center(
        child: _widgetOptions.elementAt(_selectedindex),
      ),
    bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueAccent,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.camera,color: Colors.white),label: "Camera",activeIcon: Icon(Icons.camera,color: Colors.black)),
      BottomNavigationBarItem(icon: Icon(Icons.contact_page,color: Colors.white),label: "Contact",activeIcon: Icon(Icons.contact_page,color: Colors.black)),
          BottomNavigationBarItem(icon: Icon(Icons.message,color: Colors.white),label: "Message",activeIcon:Icon(Icons.message,color: Colors.black)  ),
          BottomNavigationBarItem(icon: Icon(Icons.browse_gallery,color: Colors.white),label: "Gallery",activeIcon: Icon(Icons.browse_gallery,color: Colors.black)),
        ],
      currentIndex: _selectedindex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,

      onTap: onItemTapped,
    ),

    );
  }
}
