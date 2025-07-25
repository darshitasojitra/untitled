import 'package:flutter/material.dart';
import 'package:untitled/richtext.dart';

import 'columWidget.dart';
import 'navigation.dart';

class TextFieldscreen extends StatefulWidget {
  const TextFieldscreen({super.key});

  @override
  State<TextFieldscreen> createState() => _TextFieldscreenState();
}

class _TextFieldscreenState extends State<TextFieldscreen> {
  TextEditingController emailtextEditinController = TextEditingController();
  TextEditingController passwordtextEditinController = TextEditingController();
  String value = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      backgroundColor: Colors.grey,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: EdgeInsets.all(15.0),
          child: TextField(
            controller: emailtextEditinController,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Email"),
                hintText: "Enter Email"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            controller: passwordtextEditinController,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Password"),
                hintText: "Enter Password"),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text("Alert dialog box"),
                  content: Text("You have raised a Alert Dialog Box"),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => navigation_Widget()));
                      },
                      child: Container(
                        color: Colors.deepOrange,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("OK"),
                        ),
                      ),
                    ),

                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        },
                      child: Container(

                        color: Colors.deepOrange,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("Cancel"),
                        ),
                      ),
                    ),
                  ],
                ),
              );
             // Navigator.push(context,MaterialPageRoute(builder: (context) => navigationex()));
            },
            child: Text("Login"))
      ]),
    );
  }
}
