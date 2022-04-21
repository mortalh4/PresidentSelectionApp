import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String rNumber = 'Find the first player of the game';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
      appBar: AppBar(
        title: Text("Who will be the first player",style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
        body:
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
              children: [
                Text('Player $rNumber',
                  style: TextStyle(fontSize: 25),),
                Container(
                  padding: EdgeInsets.all(25.0),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        rNumber = (Random().nextInt(10)+1).toString();
                      });
                    },
                  child: Text('Select the first player'),
                  )
                )
              ]
          ),
        ),
      ),
    );
  }
}

