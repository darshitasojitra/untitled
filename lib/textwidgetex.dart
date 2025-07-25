import 'package:flutter/material.dart';
import 'package:untitled/richtext.dart';

class textwidgetex extends StatefulWidget {
  const textwidgetex({super.key});

  @override
  State<textwidgetex> createState() => _textwidgetexState();
}

class _textwidgetexState extends State<textwidgetex> {
  TextEditingController emailTextEditingController=TextEditingController();
  TextEditingController passwordTextEditingController=TextEditingController();
  String value = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Icon(Icons.login,color: Colors.white,),
        title: Text("Login Screen",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              onChanged: (text){
                value = text;
              },
              controller: emailTextEditingController,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.email),
                prefixIcon:Icon(Icons.email),
                border: OutlineInputBorder(),
                label: Text("Email"),
                hintText: "Enter Email"
                  
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              maxLength: 10,
              obscureText: true,
              controller: passwordTextEditingController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Password"),
                hintText: "Enter Password"
              ),
            ),
          ),
          ElevatedButton(
              onPressed: (){

                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("Alert Dialog Box"),
                    content: const Text("You have raised a Alert Dialog Box"),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>RichtextScreen()));
                        },
                        child: Container(
                          color: Colors.green,
                          padding: const EdgeInsets.all(14),
                          child: const Text("okay"),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          color: Colors.green,
                          padding: const EdgeInsets.all(14),
                          child: const Text("Cancel"),
                        ),
                      ),
                    ],
                  ),
                );
           // Navigator.push(context, MaterialPageRoute(builder: (context)=>RichtextScreen()));
          }, child: Text("Login"))
        ],
      ),
    );
  }
}
