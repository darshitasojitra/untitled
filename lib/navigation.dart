import 'package:flutter/material.dart';

class navigation_Widget extends StatefulWidget {
  const navigation_Widget({super.key});

  @override
  State<navigation_Widget> createState() => _navigation_WidgetState();
}

class _navigation_WidgetState extends State<navigation_Widget> {
  int _selectedindex=0;
  static const TextStyle optionStyle=
      TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.pink);
      static const List<Widget> _widgetOptions=<Widget>[
        Text('Home page',style: optionStyle,),
        Text('Contact page',style: optionStyle,),
        Text('Camera page',style: optionStyle,),
      ];
      void _onItemTapped(int index){
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
            decoration: BoxDecoration(
              color: Colors.blueGrey
            ),
              child: Row(
                children: [
                  Text('Dashboard',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),)
                ],
              ),
          ),
            ListTile(
              leading:Icon(Icons.add),
              title: Text('add'),
            ),
            ListTile(
              leading:Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading:Icon(Icons.contact_emergency),
              title: Text('Contact'),
            ),
            ListTile(
              leading:Icon(Icons.calendar_month),
              title: Text('calender'),
            ),
          ],
        ),

      ),
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back),
        title: Text('Home',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black)),
        actions: [
          Icon(Icons.email),
          Icon(Icons.close)
        ],
        backgroundColor: Colors.blueGrey,
      ),
    body: Center(
      child: _widgetOptions.elementAt(_selectedindex),
    ),
     bottomNavigationBar: BottomNavigationBar(
       backgroundColor: Colors.blueGrey,
       items: <BottomNavigationBarItem>[
         BottomNavigationBarItem(
           icon: Icon(Icons.home),
           label: ('Home')
         ),
         BottomNavigationBarItem(
             icon: Icon(Icons.contact_page),
             label: ('Contact')
         ),
         BottomNavigationBarItem(
             icon: Icon(Icons.camera),
             label: ('camera')
         ),
       ],
       currentIndex: _selectedindex,
       selectedItemColor: Colors.blue,
       onTap: _onItemTapped,
       
     ),
    );
  }
}
