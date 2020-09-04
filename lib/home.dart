import 'package:Messenger/widgets/chats.dart';
import 'package:Messenger/widgets/header.dart';
import 'package:Messenger/widgets/search.dart';
import 'package:Messenger/widgets/story.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var data = [
    Header(),
    SizedBox(
      height: 16,
    ),
    Search(),
    SizedBox(
      height: 16,
    ),
    Story(),
    Chats()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return data[index];
          },
        ),
      ),
    );
  }
}
