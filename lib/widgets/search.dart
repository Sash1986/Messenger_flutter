import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        hintColor: Colors.transparent,
      ),
      child: Container(
        height: 42,
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(
              color: Color(0xff757575),
              fontSize: 16,
              fontFamily: 'Regular',
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 0),
            prefixIcon: Icon(
              Icons.search,
              color: Color(0xff757575),
            ),
            fillColor: Color(0xffeeeeee),
            filled: true,
            //suffixText: "SMS",
          ),
        ),
      ),
    );
  }
}
