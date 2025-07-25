import 'package:flutter/material.dart';

import 'ex1.dart';

class alertdialogex extends StatefulWidget {
  const alertdialogex({super.key});

  @override
  State<alertdialogex> createState() => _alertdialogexState();
}

class _alertdialogexState extends State<alertdialogex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Email"),
                hintText: "Enter Email",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Password"),
                hintText: "Enter Password",
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
            showDialog(context: context, builder: (context)=>AlertDialog(
              title: Text("Alert dialog box"),
              content: Text("You have raised a Alert Dialog Box"),
              actions: <Widget>[
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>widgetex()));
                }, child: Container(
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('OK'),
                  ),
                )),
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Cancle"))
              ],
            ));

            
           // Navigator.push(context, MaterialPageRoute(builder: (context)=>widgetex()));
          }, child: Text("Login"))
        ],
      ),
    );
  }
}
