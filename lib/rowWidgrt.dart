import 'package:flutter/material.dart';

class RowWidget extends StatefulWidget {
  const RowWidget({super.key});

  @override
  State<RowWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<RowWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.pink,
                  height: 100,
                  width: 100,
                  child: Text("hello"),
                ),
                Container(
                  color: Colors.pink,
                  height: 100,
                  width: 100,
                  child: Text(
                    "hello word ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 8,
                        wordSpacing: 10,
                        shadows: [
                          Shadow(
                              color: Colors.black,
                              offset: Offset(2, 1),
                              blurRadius: 10)
                        ]),
                  ),
                ),
                Container(
                  color: Colors.pink,
                  height: 100,
                  width: 100,
                  child: Text("hello"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.pink,
                  height: 100,
                  width: 100,
                  child: Text("hello"),
                ),
                Container(
                  color: Colors.pink,
                  height: 100,
                  width: 100,
                  child: Text("hello"),
                ),
                Container(
                  color: Colors.pink,
                  height: 100,
                  width: 100,
                  child: Text("hello"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
