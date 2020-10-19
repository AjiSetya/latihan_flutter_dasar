import 'package:flutter/material.dart';

class HeroAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        alignment: Alignment.bottomCenter,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Page2()));
          },
          child: Hero(
              tag: 'Image',
              child: CircleAvatar(
                maxRadius: 100.0,
                backgroundColor: Colors.green,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1553570739-330b8db8a925?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'),
              )),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Beutifull Beach'),
              background: Hero(
                  tag: 'Image',
                  child: Image.network(
                    'https://images.unsplash.com/photo-1553570739-330b8db8a925?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
                    fit: BoxFit.cover,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
