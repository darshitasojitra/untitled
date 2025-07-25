import 'package:flutter/material.dart';

class stackScreen extends StatefulWidget {
  const stackScreen({super.key});

  @override
  State<stackScreen> createState() => _stackScreenState();
}

class _stackScreenState extends State<stackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        Stack(
          textDirection: TextDirection.ltr,
          fit: StackFit.passthrough,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.greenAccent,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.yellow,
            ),Positioned(
              top: 20,
              left: 20,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.pink
              ),
            ),
          ],
        ),
IndexedStack(
  index: 2,
  children: [
    Container(
      height: 200,
      width: 200,
      color: Colors.greenAccent,
    ),
    Container(
      height: 150,
      width: 150,
      color: Colors.yellow,
    ),Positioned(
      top: 20,
      left: 20,
      child: Container(
          height: 100,
          width: 100,
          color: Colors.pink
      ),
    ),
  ],
)
        ],
      ),
    );
  }
}
