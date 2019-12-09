import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => new _ChatsState();
}

class _ChatsState extends State<Chats> {

  String pic1 = "https://images.pexels.com/photos/247878/pexels-photo-247878.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  String pic2 = "https://images.pexels.com/photos/556663/pexels-photo-556663.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  String pic3 = "https://images.pexels.com/photos/3154297/pexels-photo-3154297.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  String pic4 = "https://images.pexels.com/photos/958026/assembly-smartphone-photography-photograph-958026.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  String pic5 = "https://images.pexels.com/photos/958026/assembly-smartphone-photography-photograph-958026.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  String pic6 = "https://images.pexels.com/photos/1851415/pexels-photo-1851415.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            chatData(pic1, "Hello How are you", "Hope you are doing well",
                "12/09/2019", "6"),
            const Divider(
              color: Colors.black,
              indent: 100,
            ),
            chatData(pic2, "Hello How are you", "Hope you are doing well",
                "12/09/2019", "10"),
            const Divider(
              color: Colors.black,
              indent: 100,
            ),
            chatData(pic3, "Hello How are you", "Hope you are doing well",
                "12/09/2019", "2"),
            const Divider(
              color: Colors.black,
              indent: 100,
            ),
            chatData(pic4, "Hello How are you", "Hope you are doing well",
                "12/09/2019", "5"),
            const Divider(
              color: Colors.black,
              indent: 100,
            ),
            chatData(pic5, "Hello How are you", "Hope you are doing well",
                "12/09/2019", "23"),
            const Divider(
              color: Colors.black,
              indent: 100,
            ),
            chatData(pic1, "Hello How are you", "Hope you are doing well",
                "12/09/2019", "6"),
            const Divider(
              color: Colors.black,
              indent: 100,
            ),


          ],
        ),
      ),

    );
  }

  Widget chatData(String img, String chatTitle, String chatContent,
      String date, String messageCount) {
    return Container(
      margin: EdgeInsets.all(10.0),
      height: 100.0,
      child: Row(
        children: <Widget>[

          Expanded(
              flex: 2,
              child: new Container(
                height: 100.0,
                width: 100.0,
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(img)
                    )
                ),
              )
          ),
          SizedBox(width: 6.0,),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(chatTitle,
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(height: 5.0,),

                Container(
                  child: Text(chatContent,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.grey,
                    ),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(width: 5.0,),
          Expanded(
            flex: 2,
            child: Column(
              children: <Widget>[
                Container(
                  child: Text(date,
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(height: 5.0,),
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle
                  ),
                  child: Text(messageCount,
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }

}


