import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: Container(
              child: Container(
                
                child: Icon(Icons.search),
              ),
              height: 40,
              width: 300,
              color: Color.fromARGB(50, 0, 0, 0),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
            ),
          ),
        ),
      ),
    );
  }
}
