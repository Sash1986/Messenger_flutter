import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  final data = <Widget>[
    chats("Laura", "Բարև։ Ինչպե՞ս ես։", "assets/avatars/default_female.png",
        true, 1),
    chats("Tigran", "Sasha jan,", "assets/avatars/avatar1.png", false, 2),
    chats("Gurgen", "Barev. Inchpes eq?Tnayeinnern ugharkeq!",
        "assets/avatars/avatar.png", false, 1),
    chats("Ani", "Բարև ձեզ", "assets/avatars/avatar2.png", false, 0),
    chats("Anonymous", "Բարև ձեզ:Առաջարկում ենք աշխատանք տանից։",
        "assets/avatars/default_male.png", true, 1)
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: data,
    );
  }

  static Widget chats(
      String name, String msg, String imgUrl, bool readStatus, int status) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Slidable(
        child: Row(
          children: <Widget>[
            status == 0
                ? Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(imgUrl),
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                : status == 1 ? storyOnline(imgUrl) : storyOffline(),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Medium',
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          msg,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color(0xff757575),
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Text(
                        //DateTime.now().toIso8601String(),
                        "04 Sept",
                        style: TextStyle(
                          color: Color(0xff757575),
                          fontSize: 14,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        delegate: SlidableScrollDelegate(),
        actionExtentRatio: 0.15,
        actions: <Widget>[
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff0091ea),
            ),
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
              size: 20,
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffeeeeee),
            ),
            child: Icon(
              Icons.call,
              color: Colors.black,
              size: 20,
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffeeeeee),
            ),
            child: Icon(
              Icons.videocam,
              color: Colors.black,
              size: 20,
            ),
          )
        ],
        secondaryActions: <Widget>[
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffeeeeee),
            ),
            child: Icon(
              Icons.menu,
              color: Colors.black,
              size: 20,
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffeeeeee),
            ),
            child: Icon(
              Icons.notifications,
              color: Colors.black,
              size: 20,
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffff1744),
            ),
            child: Icon(
              Icons.delete,
              color: Colors.white,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}

Widget storyOnline(String img) {
  return Stack(
    children: <Widget>[
      Container(
        width: 55,
        height: 55,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(
              img,
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
      Positioned(
        bottom: 0,
        right: 0,
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 3),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff64dd17),
              shape: BoxShape.circle,
            ),
          ),
        ),
      )
    ],
  );
}

Widget storyOffline() {
  return Container(
    width: 55,
    height: 55,
    padding: EdgeInsets.all(3),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
      border: Border.all(
        color: Color(0xff0091ea),
        width: 3,
      ),
    ),
    child: Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage("assets/avatars/male.png"),
          fit: BoxFit.fill,
        ),
      ),
    ),
  );
}
