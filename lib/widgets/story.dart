import 'package:flutter/material.dart';

class Story extends StatefulWidget {
  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {
  final widgets = [
    storyAdd(),
    storyOnline('Laura', "assets/avatars/default_female.png"),
    storyOffline('Arthur'),
    storyOnline('Gurgen', "assets/avatars/avatar.png"),
    storyOnline('Lusine', "assets/avatars/girl.png"),
    storyOffline('Samvel'),
    storyOnline('Anonymous', "assets/avatars/default_male.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: widgets,
      ),
    );
  }

  static Widget storyAdd() {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.add,
              color: Colors.black,
              size: 30,
            ),
          ),
          Text(
            'Your Story',
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Regular',
              color: Color(0xff9e9e9e),
            ),
          )
        ],
      ),
    );
  }

  static Widget storyOnline(String name, String path) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(path),
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
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Regular',
              color: Color(0xff9e9e9e),
            ),
          )
        ],
      ),
    );
  }

  static Widget storyOffline(String name) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
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
                  image: AssetImage("assets/avatars/boy.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Regular',
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
