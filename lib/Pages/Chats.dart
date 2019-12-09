import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => new _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          ],
        ),
      ),

    );
  }

  Widget chatData(IconData img, String chatTitle, String chatContent,
      String date, String messageCount) {

  }

}


