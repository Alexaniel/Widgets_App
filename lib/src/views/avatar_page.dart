

import 'package:flutter/material.dart';


class AvatarView extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Vista de Avatars'),
        actions: <Widget>[
          Container(
            width: 60.0,
            padding: EdgeInsets.all(2.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://img.favpng.com/7/5/8/computer-icons-font-awesome-user-font-png-favpng-YMnbqNubA7zBmfa13MK8WdWs8.jpg'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20.0),
            child: CircleAvatar(
              child: Text(
                "SL"
              ),
              backgroundColor: Colors.cyan[100] 
            )
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/img/original.gif'), 
          image: NetworkImage('https://api.time.com/wp-content/uploads/2017/12/terry-crews-person-of-year-2017-time-magazine-facebook-1.jpg?quality=85'),
          fadeInDuration: Duration(milliseconds: 200),
        )
      ),
    );
  }
}