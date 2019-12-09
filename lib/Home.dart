import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/Pages/Call.dart' as call;
import 'package:flutter_whatsapp_clone/Pages/Chats.dart' as chat;
import 'package:flutter_whatsapp_clone/Pages/Contacts.dart' as contacts;
import 'package:flutter_whatsapp_clone/Pages/Status.dart' as status;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: AppBar(
        title: Text("WhatsApp"),
        backgroundColor: Color(0xFF016258),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () => debugPrint("Search")
          ),
          IconButton(
              icon: Icon(Icons.comment),
              onPressed: () => debugPrint("Comment")
          ),
          IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () => debugPrint("More")
          ),

        ],
        bottom: TabBar(
          controller: controller,
          indicatorColor: Colors.white,
          isScrollable: true,
          indicatorWeight: 3.0,
          labelStyle: TextStyle(fontSize: 18.0),
          tabs: <Widget>[
            Tab(text: "CALLS",),
            Tab(text: "CHATS",),
            Tab(text: "STATUS",),
            Tab(text: "CONTACTS",),
          ],
        ),
      ),
      body: TabBarView(
          controller: controller,
        children: <Widget>[
          call.Call(),
          chat.Chats(),
          status.Status(),
          contacts.Contacts()

        ],
      ),


    );
  }
}


