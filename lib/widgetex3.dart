import 'package:flutter/material.dart';

class widgetex3 extends StatefulWidget {
  const widgetex3({super.key});

  @override
  State<widgetex3> createState() => _widgteex3State();
}

class _widgteex3State extends State<widgetex3> {
  int _selectedindex=0;
  static const TextStyle optionStyle=
      TextStyle(fontSize: 25,fontWeight: FontWeight.bold);
      static const List<Widget> _widgetOptions=<Widget>[
        Text
          ('Home Page',
          style: optionStyle,
        ),
        Text
          ('Contact Page',
          style: optionStyle,

        ),
        Text
          ('Email',
          style: optionStyle,
        ),
  ];
      void _onItemTapped(int index){
        setState(() {
          _selectedindex=index;
        });
      }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      drawer: Drawer(
        child: ListView(
          children: <Widget> [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Row(
                children: [
                  Text('Dashboard',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('email'),
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              title: Text('calculater'),
            ),
            ListTile(
              leading: Icon(Icons.calendar_month),
              title: Text('calendar'),
            )


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
            label:('Home')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_emergency),
            label: ('Contact')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.email),
            label: ('Email')
            ),
          ],
        currentIndex: _selectedindex,
        selectedItemColor: Colors.pinkAccent,
        onTap: _onItemTapped,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),),
    );
  }
}
