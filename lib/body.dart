import 'package:flutter/material.dart';
import 'secondRoot.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.green[600],
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.camera_alt, color: Colors.white60),
              Container(
                color: Colors.green[600],
                height: 30,
                child: Center(
                  child: Text(
                    'CHATS',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
              Container(
                color: Colors.green[600],
                height: 30,
                child: Center(
                  child: Text(
                    'STATUS',
                    style: TextStyle(
                        color: Colors.white60,
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  ),
                ),
              ),
              Container(
                color: Colors.green[600],
                height: 30,
                child: Center(
                  child: Text(
                    'CALLS',
                    style: TextStyle(
                        color: Colors.white60,
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
        Chats()
      ],
    );
  }
}

class Chats extends StatefulWidget {
  const Chats({
    Key key,
  }) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

//all the chats( the list view of the chats);
class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 600,
      child: ListView(
        children: [
          Contact(
            name: 'Ammar Giza',
            dummyText: '...يا محمد البتاع اللي قلت',
            image: 'assets/ammar.png',
          ),
          Contact(
            name: 'Farah',
            dummyText: 'an hour left for the sl...',
            image: 'assets/farah.png',
          ),
          Contact(
            name: 'some other name',
            dummyText: 'yes, but probably not bc th...',
            image: 'assets/simenSinek.png',
          ),
          // Contact('someOne'),
          // Contact('someOne'),
          // Contact('someOne'),
          ElevatedButton(
            onPressed: () {
              var snackbar = SnackBar(content: Text('hi flutter'));
              Scaffold.of(context).showSnackBar(snackbar);
            },
            child: Text('elevation button that displays a snackbar'),
          )
        ],
      ),
    );
  }
}

//a template for any contact : It's like a class for contacts
class Contact extends StatelessWidget {
  Contact({this.name, this.image, this.dummyText});
  final String name, image, dummyText;
  
  
  @override
  Widget build(BuildContext context) {
    

    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Second(name)));
      },
      child: ListTile(
        title: Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          dummyText,
          style: TextStyle(fontSize: 16),
        ),
        leading: CircleAvatar(
          backgroundImage: AssetImage(image),
        ),
        trailing: Column(
          children: [
            Text(
              'onine',
              style: TextStyle(color: Colors.green),
            ),
            Icon(
              Icons.circle,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}

//second window opener takes nam3e as an input from the contact creator
class Second extends StatelessWidget {
  Second(this.name);

  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(name),
      ),
    );
  }
}
