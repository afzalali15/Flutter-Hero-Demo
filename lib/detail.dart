import 'package:flutter/material.dart';

import 'main.dart';

class MyDetailPage extends StatefulWidget {
  MySuperHero _superHero;

  MyDetailPage(MySuperHero superHero) {
    _superHero = superHero;
  }

  @override
  _MyDetailPageState createState() => _MyDetailPageState(_superHero);
}

class _MyDetailPageState extends State<MyDetailPage> {
  MySuperHero superHero;

  _MyDetailPageState(MySuperHero superHero) {
    this.superHero = superHero;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(superHero.title),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Hero(
            transitionOnUserGestures: true,
            tag: superHero,
            child: Transform.scale(
              scale: 2.0,
              child: Image.asset(superHero.img),
            ),
          ),
          Card(
            elevation: 8,
            margin: EdgeInsets.all(16),
            child: Container(
              padding: EdgeInsets.all(16),
              child: Text(superHero.body),
            )
          ),
        ],
      )),
    );
  }
}
