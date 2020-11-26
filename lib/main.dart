import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'body.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(backgroundColor: Colors.green, primarySwatch: Colors.green),
      title: 'WhatsApp title of material app',
      home: Scaffold(
        appBar: buildAppBar(context),
        body: Body(),
        drawer: DrawerBuilder(),
        //this is suppose to make a new route but kinda slacking off..
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Hello()));
          }
        
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text('WhatsApp'),
      actions: [
        SizedBox(
          width: 20,
          height: 20,
        ),
        GestureDetector(child: Icon(Icons.settings), onTap: (){
          
        },)
      ],
      elevation: 0,
      backgroundColor: Colors.green[600],
      toolbarHeight: 40,
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}


class DrawerBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(backgroundImage: AssetImage('assets/muhammed.png')),
                accountName: Text('Muhammed Hosny'), accountEmail: Text('mhosny67710@gamil.com'),),
              ListTile(
                leading: Icon(Icons.email),
                title: Text('mhosny67710@gmail.com'),
                trailing: Icon(Icons.edit),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('01005397776'),
                trailing: Icon(Icons.edit),
              ),
            ] ,
          ),
        );
  }
}