import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'body.dart';
import 'secondRoot.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(backgroundColor: Colors.green),
      title: 'WhatsApp title of material app',
      home: Scaffold(
        appBar: buildAppBar(),
        body: Body(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            var snackbar = SnackBar(content: Text('hi flutter'));
            Scaffold.of(context).showSnackBar(snackbar);
          },
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text('WhatsApp'),
      elevation: 0,
      backgroundColor: Colors.green[600],
      toolbarHeight: 40,
    );
  }
}
