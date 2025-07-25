import 'package:flutter/material.dart';
import 'package:untitled/ex1.dart';

class buttonex extends StatefulWidget {
  const buttonex({super.key});

  @override
  State<buttonex> createState() => _buttonexState();
}

class _buttonexState extends State<buttonex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.deepOrange
                ),
        
                child: Row(children: [
                  Text('Dashboard',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),)
                ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                leading: Icon(Icons.calendar_month),
                title: Text('calendar'),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text('email'),
              ),
              ListTile(
                leading: Icon(Icons.contact_emergency),
                title: Text('contact'),
              ),
              ListTile(
                leading: Icon(Icons.account_box_outlined),
                title: Text('accountbox'),
              ),
              ListTile(
                leading: Icon(Icons.access_alarm),
                title: Text('alarm'),
              ),
              ListTile(
                leading: Icon(Icons.account_balance_sharp),
                title: Text('balance'),
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
        backgroundColor: Colors.deepOrange,
      ),
      body:Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: TextButton(child: Text('SignUp',style: TextStyle(fontSize: 20),),
              onPressed: (){},
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextButton(child: Text('SignIn',style: TextStyle(fontSize: 20),),
              onPressed: (){},
            ),
          ),
          Container(
            child: ElevatedButton(
                child: Text('Click',style: TextStyle(color: Colors.pink),),
                onPressed:(){
                  print('onPress');
                },
            ) ,
          ),
    Container(
      child: FloatingActionButton(onPressed: () {
        print('floating action button');
      },
      child: Icon(Icons.add),),
    )
    ],
      )
    );
  }
}
