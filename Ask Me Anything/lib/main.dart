import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue.shade900,
        ),
        backgroundColor: Colors.blue,
        body: BodyPage(),
      ),
    ),
  );
}

class BodyPage extends StatefulWidget {
  const BodyPage({Key? key}) : super(key: key);

  @override
  _BodyPageState createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  var ballnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: TextButton(
            child: Image.asset('images/ball$ballnumber.png'),
            onPressed: () {
              setState(() {
                ballnumber = Random().nextInt(5) + 1;
              });
              // )
            },
          ),
        ),
      ],
    );
  }
}
