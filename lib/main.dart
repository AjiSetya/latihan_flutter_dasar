import 'package:flutter/material.dart';
import 'package:latihan_layout/pageview.dart';
import 'Login1.dart';
import 'Login2.dart';
import 'WaChatItem.dart';
import 'CardImage.dart';
import 'ListHewan.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

import 'hero_animation.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Latihan Layout"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                left: 8.0, top: 4.0, right: 8.0, bottom: 4.0),
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                color: Colors.red,
                child: Text(
                  "Login 1",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login1()));
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 8.0, top: 4.0, right: 8.0, bottom: 4.0),
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.deepPurple,
                child: Text(
                  "Login 2",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login2()));
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 8.0, top: 4.0, right: 8.0, bottom: 4.0),
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.deepPurple,
                child: Text(
                  "ChatList HardCore",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WaChatItem()));
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 8.0, top: 4.0, right: 8.0, bottom: 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                GradientButton(
                  increaseWidthBy: 10000.0,
                  child: Text("List Hewan"),
                  callback: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ListHewan()));
                  },
                  gradient: Gradients.hotLinear,
                  shadowColor: Gradients.hotLinear.colors.last.withOpacity(0.3),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 8.0, top: 4.0, right: 8.0, bottom: 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                GradientButton(
                  increaseWidthBy: 10000.0,
                  child: Text("Card Image"),
                  callback: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CardImage()));
                  },
                  gradient: Gradients.hotLinear,
                  shadowColor: Gradients.hotLinear.colors.last.withOpacity(0.3),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 8.0, top: 4.0, right: 8.0, bottom: 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                GradientButton(
                  increaseWidthBy: 10000.0,
                  child: Text("Page View"),
                  callback: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PageView1()));
                  },
                  gradient: Gradients.hotLinear,
                  shadowColor: Gradients.hotLinear.colors.last.withOpacity(0.3),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 8.0, top: 4.0, right: 8.0, bottom: 4.0),
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: Colors.green,
                child: Text(
                  "Hero Animation",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HeroAnimation()));
                }),
          ),
        ],
      ),
    );
  }
}
