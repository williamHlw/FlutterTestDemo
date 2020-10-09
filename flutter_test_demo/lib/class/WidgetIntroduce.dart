import 'package:flutter/material.dart';

class WidgetIntroduce extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var title = "widget介绍";
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
        backgroundColor: Colors.blue,
      ),
      body: showView(),
    );
  }
}

class showView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Text('lineOne'),
            ),
          ),
          Expanded(
            child: Center(
              child: Text('Hello, world!'),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
        ],
      ),
    );
  }

}

