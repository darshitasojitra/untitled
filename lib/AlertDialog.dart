import 'package:flutter/material.dart';

import 'TextField.dart';

class AlertDialogex extends StatefulWidget {
  const AlertDialogex({super.key});

  @override
  State<AlertDialogex> createState() => _AlertDialogexState();
}

class _AlertDialogexState extends State<AlertDialogex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Username"),
                hintText: "Enter Username"
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Password"),
                  hintText: "Enter Password"
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
            showDialog(context: context, builder: (context)=>AlertDialog(
              title: Text("Alert dialog box"),
              content: Text("You have raised a Alert Dialog Box"),

            ));
            Navigator.push(context, MaterialPageRoute(builder: (context)=>TextFieldscreen()));
          }, child: Text("Login"))
          ],
      ),
    );
  }
}
