import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => new _ContactsState();
}

class _ContactsState extends State<Contacts> {

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

            contactData(pic1,"Jon Deon","Jon Deon from USA","PHONE"),
            const Divider(
              color: Colors.black,
              indent: 100,
            ),
            contactData(pic2,"Jon Deon","Jon Deon from USA","PHONE"),
            const Divider(
              color: Colors.black,
              indent: 100,
            ),
            contactData(pic3,"Jon Deon","Jon Deon from USA","PHONE"),
            const Divider(
              color: Colors.black,
              indent: 100,
            ),
            contactData(pic4,"Jon Deon","Jon Deon from USA","PHONE"),
            const Divider(
              color: Colors.black,
              indent: 100,
            ),
            contactData(pic5,"Jon Deon","Jon Deon from USA","PHONE"),
            const Divider(
              color: Colors.black,
              indent: 100,
            ),
            contactData(pic6,"Jon Deon","Jon Deon from USA","PHONE"),
            const Divider(
              color: Colors.black,
              indent: 100,
            ),

          ],
        ),
      ),
    );
  }

  Widget contactData(String img, String name, String description,
      String phone,) {
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
                  child: Text(name,
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(height: 5.0,),

                Container(
                  child: Text(description,
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(phone,
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,

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
