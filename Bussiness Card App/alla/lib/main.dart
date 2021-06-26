import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.green.shade800,
        //   title: Center(
        //     child: Text('Alla Srininvasa Rao'),
        //   ),
        // ),
        backgroundColor: Colors.green.shade600,
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(
                    'Images/dad.png',
                  ),
                ),
                Text(
                  'Alla Srinivasa Rao',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Pacifico'),
                ),
                Text(
                  'Electrician',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'Lato',
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                  width: 180,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  color: Colors.white,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                    child: ListTile(
                      leading: Icon(
                        Icons.call,
                        color: Colors.green.shade800,
                      ),
                      title: Text(
                        '+91 9642995858',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.green.shade800,
                    ),
                    title: Text(
                      'arunasrinivas@gmail.com',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
