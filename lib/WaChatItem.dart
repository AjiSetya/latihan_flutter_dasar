import 'package:flutter/material.dart';

class WaChatItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChatItemScreen();
  }
}

class ChatItemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        backgroundColor: Color.fromARGB(255, 7, 94, 84),
      ),
      body: ListView(
        children: <Widget>[
          new ChatItem(),
          new ChatItem(),
          new ChatItem(),
          new ChatItem(),
          new ChatItem(),
          new ChatItem(),
          new ChatItem(),
          new ChatItem(),
          new ChatItem(),
          new ChatItem(),
          new ChatItem(),
          new ChatItem(),
          new ChatItem(),
          new ChatItem(),
        ],
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final leftSection = new Container(
    child: new CircleAvatar(
      backgroundImage: new NetworkImage(
          "https://content-static.upwork.com/uploads/2014/10/01073427/profilephoto1.jpg"),
      backgroundColor: Color.fromARGB(255, 7, 94, 84),
      radius: 24.0,
    ),
  );

  final middleSection = new Expanded(
      child: new Container(
    padding: new EdgeInsets.only(left: 8.0),
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Text("Haidar",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 16.0)),
        Text(
          "sampean ng endi mas?",
          style: TextStyle(color: Colors.grey),
        )
      ],
    ),
  ));

  final rightSection = new Container(
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        new Text(
          "08.00",
          style:
              TextStyle(color: Color.fromARGB(255, 7, 94, 84), fontSize: 12.0),
        ),
        new CircleAvatar(
          backgroundColor: Color.fromARGB(255, 7, 94, 84),
          radius: 10.0,
          child: new Text(
            "6",
            style: TextStyle(color: Colors.white, fontSize: 12.0),
          ),
        )
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      height: 70.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[leftSection, middleSection, rightSection],
      ),
    );
  }
}
