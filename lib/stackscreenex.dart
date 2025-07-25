import 'package:flutter/material.dart';

class stackscreenex extends StatefulWidget {
  const stackscreenex({super.key});

  @override
  State<stackscreenex> createState() => _stackscreenexState();
}

class _stackscreenexState extends State<stackscreenex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        automaticallyImplyLeading: true,
        title: Text("Stack Widget"),
      ),
      body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Stack(
              textDirection: TextDirection.rtl,
            children: [
              Container(
                height: 350,
                width: 350,
                color: Colors.pink,
              ),
              Container(
                height: 300,
                width: 300,
                color: Colors.yellow,
              ),
              Container(
                height: 250,
                width: 250,
                color: Colors.greenAccent,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.purple,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.deepOrange,
              ),

              Positioned(
                left: 20,
                bottom: 20,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.indigoAccent,
                ),
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.brown,
              )
            ],
                  ),
              IndexedStack(
                index: 2,
                children: [
                  Container(
                    height: 350,
                    width: 350,
                    color: Colors.pink,
                  ),
                  Container(
                    height: 300,
                    width: 300,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 250,
                    width: 250,
                    color: Colors.greenAccent,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.purple,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.deepOrange,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.indigoAccent,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.brown,
                  ),
                ],
              )
              ],
          ),
        ),
      );
  }
}
