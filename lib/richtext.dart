import 'package:flutter/material.dart';
import 'package:untitled/rowWidgrt.dart';

class RichtextScreen extends StatefulWidget {
  const RichtextScreen({super.key});

  @override
  State<RichtextScreen> createState() => _RichtextScreenState();
}

class _RichtextScreenState extends State<RichtextScreen> {
  TextEditingController emailtextEditingController = TextEditingController();
  TextEditingController passtextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        RichText(text: TextSpan(
            text: 'Don\'t have an account?',style: TextStyle(color: Colors.black, fontSize: 20),
          children: [
            TextSpan(
              text: "SignUp",
              style:  TextStyle(color: Colors.pink, fontSize: 30),
            ),

            TextSpan(
              text: 'vcgdddd',style: TextStyle(color: Colors.black,fontSize: 20),
              children: [
                TextSpan(
                  text: "SignIn",
                  style: TextStyle(color: Colors.pink)
                )
              ]
            )
          ]
        ),
        ),

          SizedBox(height: 20,),

          Padding(
            padding:  EdgeInsets.all(15.0),
            child: TextField(
              controller: emailtextEditingController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                label:Text("Email"),
                hintText: "Enter Email"
              ),
            ),
          ),SizedBox(height: 10,),
          Padding(
            padding:  EdgeInsets.all(15.0),
            child: TextField(
              controller: passtextEditingController,
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                label:Text("Password"),
                hintText: "Enter Password"
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>RowWidget()));
          }, child: Text("Login"))
        ])
    );
  }
}
