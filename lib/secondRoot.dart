import 'package:flutter/material.dart';
import 'package:whatsapp_clone/main.dart';

class SecondRoot extends StatefulWidget {
  @override
  _SecondRootState createState() => _SecondRootState();
}

class _SecondRootState extends State<SecondRoot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
