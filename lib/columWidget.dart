import 'package:flutter/material.dart';

class columWidget extends StatefulWidget {
  const columWidget({super.key});

  @override
  State<columWidget> createState() => _columWidgetState();
}

class _columWidgetState extends State<columWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 110,
                height: 110,
                color: Colors.brown,
                child: Center(
                    child: Text(
                  'Hello',
                  style: TextStyle(
                      color: Colors.white,
                      shadows: [Shadow(color: Colors.yellow,offset:Offset(5, 3) , blurRadius: 15)],
                      letterSpacing: 5,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )),
              ),
              Container(
                width: 120,
                height: 120,
                color: Colors.pink,
              ),
              Container(
                width: 130,
                height: 130,
                color: Colors.yellow,
                child: Center(
                  child: Text('Hello',
                  style: TextStyle(
                      color: Colors.black38,
                      shadows: [Shadow(color: Colors.green,offset:Offset(5, 3) , blurRadius: 15)],
                      letterSpacing: 5,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                                ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 130,
                height: 130,
                color: Colors.brown,
              ),
              Container(
                width: 130,
                height: 130,
                color: Colors.brown,
              ),
              Container(
                width: 130,
                height: 130,
                color: Colors.brown,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 130,
                height: 130,
                color: Colors.brown,
              ),
              Container(
                width: 130,
                height: 130,
                color: Colors.brown,
              ),
              Container(
                width: 130,
                height: 130,
                color: Colors.brown,
              )
            ],
          ),
        ],
      ),
    );
  }
}
