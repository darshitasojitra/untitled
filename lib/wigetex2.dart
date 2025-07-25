import 'package:flutter/material.dart';
import 'package:untitled/statefull.dart';

class widgetex2 extends StatefulWidget {
  const widgetex2({super.key});

  @override
  State<widgetex2> createState() => _widgetex2State();
}

class _widgetex2State extends State<widgetex2> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'HOME PAGE xyz',
      style: optionStyle,
    ),
    Text(
      'COURSE PAGE',
      style: optionStyle,
    ),
    Text(
      'CONTACT GFG',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
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
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: ('Courses'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: ('Mail'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),

      floatingActionButton: FloatingActionButton(

          onPressed: (){},
      child: Icon(Icons.add),),

    );
  }
}
