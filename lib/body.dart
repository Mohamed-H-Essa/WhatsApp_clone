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

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 600,
      child: ListView(
        children: [
          ListTile(
            title: Text(
              'Ammar Gizza',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'يا محمد اللي انا قلتلك عليه بتا...',
              style: TextStyle(fontSize: 16),
            ),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/ammar.png'),
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
          ListTile(
            title: Text(
              'Mahmoud Hesham',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'ok, see u there.',
              style: TextStyle(fontSize: 16),
            ),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/mahmoud.png'),
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
          ListTile(
            onTap: () {
              SecondRoot();
            },
            title: Text(
              'Simen Sinek',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Yes, It will probably take a really...',
              style: TextStyle(fontSize: 16),
            ),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/simenSinek.png'),
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
        ],
      ),
    );
  }
}
