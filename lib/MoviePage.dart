import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoviePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie Page"),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
            height: 250.0,
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Center(
                      child: Text("asd"),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
