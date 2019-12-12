import 'package:flutter/material.dart';

class Call extends StatefulWidget {
  @override
  _CallState createState() => new _CallState();
}

class _CallState extends State<Call> {

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

            callData(pic1, "+88 0178956003","April 20, 10.25pm",Icons.videocam),
            const Divider(
              color: Colors.black,
              indent: 100,
            ),
            callData(pic2, "+88 0178956003","April 20, 10.25pm",Icons.call),
            const Divider(
              color: Colors.black,
              indent: 100,
            ),
            callData(pic3, "+88 0178956003","April 20, 10.25pm",Icons.call),
            const Divider(
              color: Colors.black,
              indent: 100,
            ),
            callData(pic4, "+88 0178956003","April 20, 10.25pm",Icons.videocam),
            const Divider(
              color: Colors.black,
              indent: 100,
            ),
            callData(pic5, "+88 0178956003","April 20, 10.25pm",Icons.call),
            const Divider(
              color: Colors.black,
              indent: 100,
            ),

          ],
        ),
      ),



      floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.call),
        backgroundColor: Color(0xFF016258),
      ),
    );
  }


  
  Widget callData(String img, String phoneNumber, String date,
      IconData icon,) {
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(phoneNumber,
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(height: 5.0,),
                Container(
                  child: Text(date,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.black87,
                    ),
                  ),
                ),

              ],
            ),
          ),

          SizedBox(width: 6.0,),

          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Icon(icon,color: Color(0xFF016258),size: 30.0,),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}


