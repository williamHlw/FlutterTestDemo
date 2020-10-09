import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class NavigationTest extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var title = "导航测试";
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
        backgroundColor: Colors.blue,
      ),
      body: new Center(
        child: new RaisedButton(onPressed: null),
      ),
    );
  }
}

