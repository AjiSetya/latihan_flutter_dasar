import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_style.dart';

class CardImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Design"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
            height: 250.0,
            child: Stack(
              children: <Widget>[
                backgroundImage,
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: topContent,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  final backgroundImage = new Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.luminosity),
            image: NetworkImage(
                "https://www.ef.co.id/englishfirst/efblog/wp-content/uploads/2019/07/macaron-750x420.jpg"))),
  );

  final topContent = new Container(
    height: 80.0,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text(
          "Roti Bolu",
          style: bigHeaderTextStyle,
        ),
        Text(
          "Pelengkap menu makan",
          style: descTextStyle,
        ),
        Container(
          height: 2.0,
          width: 80.0,
          color: Colors.redAccent,
        ),
        Text(
          "24 biji",
          style: footerTextStyle,
        )
      ],
    ),
  );
}
