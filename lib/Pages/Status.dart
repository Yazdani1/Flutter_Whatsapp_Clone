import 'package:flutter/material.dart';


class Status extends StatefulWidget {
  @override
  _StatusState createState() => new _StatusState();
}

class _StatusState extends State<Status> {

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Container(
              height: 80.0,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 80.0,
                        width: 80.0,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle
                        ),
                        child: Icon(Icons.add_a_photo,color: Colors.white,),
                      ),

                      SizedBox(width: 6.0,),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[

                            Text("My Status is",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                            SizedBox(height: 5.0,),
                            Text("tap to add your today's status",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 10.0,),

            Container(
              margin: EdgeInsets.all(10.0),
              child: Text("Most recent status",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0
              ),
              ),
            )

            statusData(pic1, "Feeling good","Today is a good day for me","12/9/2019"),
            const Divider(
              color: Colors.black,
              indent: 100,
            ),
          ],
        ),
      ),


    );
  }

  Widget statusData(String img, String title, String description,String date) {
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
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(title,
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
              mainAxisAlignment: MainAxisAlignment.center,
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
              ],
            ),
          ),

        ],
      ),
    );
  }

}


