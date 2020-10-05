import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: PageViewDemo(),
        ),
      ),
    );
  }
}

class PageViewDemo extends StatefulWidget {
  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController _controller = PageController(initialPage: 0);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: <Widget>[
        MyPage1(),
        MyPage2(),
        MyPage3(),
      ],
    );
  }
}

class MyPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            MyBox(darkGreen, height: 50),
          ],
        ),
        Row(
          children: <Widget>[
            MyBox(lightGreen),
            MyBox(lightGreen),
          ],
        ),
        MyBox(mediumGreen, text: 'PageView1'),
        Row(
          children: <Widget>[
            MyBox(lightGreen, height: 200),
            MyBox(lightGreen, height: 200),
          ],
        )
      ],
    );
  }
}

class MyPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            MyBox(darkBlue, height: 50),
            MyBox(darkBlue, height: 50),
          ],
        ),
        Row(
          children: <Widget>[
            MyBox(lightBlue),
            MyBox(lightBlue),
          ],
        ),
        MyBox(mediumBlue, text: 'PageView2'),
        Row(
          children: <Widget>[
            MyBox(lightBlue),
            MyBox(lightBlue),
          ],
        )
      ],
    );
  }
}

class MyPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            MyBox(darkRed, height: 50),
            MyBox(darkRed, height: 50),
          ],
        ),
        MyBox(mediumRed, text: 'PageView3'),
        Row(
          children: <Widget>[
            MyBox(lightRed),
            MyBox(lightRed),
            MyBox(lightRed),
          ],
        )
      ],
    );
  }
}

const lightBlue = Color(0xff00bbff);
const mediumBlue = Color(0xff00a2fc);
const darkBlue = Color(0xff0075c9);

final lightGreen = Colors.green.shade300;
final mediumGreen = Colors.green.shade600;
final darkGreen = Colors.green.shade900;

final lightRed = Colors.red.shade300;
final mediumRed = Colors.red.shade600;
final darkRed = Colors.red.shade900;

class MyBox extends StatelessWidget {
  final Color color;
  final double height;
  final String text;

  MyBox(this.color, {this.height, this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.all(10),
      color: color,
      height: (height == null) ? 150 : height,
      child: (text == null)
          ? null
          : Center(
              child: Text(text,
                  style: TextStyle(fontSize: 50, color: Colors.white))),
    ));
  }
}
