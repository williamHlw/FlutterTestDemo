import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_demo/class/NavigationTest.dart';
import 'package:flutter_test_demo/class/WidgetIntroduce.dart';
import 'package:flutter_test_demo/class/LayoutTest.dart';
import 'package:flutter_test_demo/class/LayoutConstraintTest.dart';
void main() {
  runApp(MyApp(
    items: ["导航测试","Widgets介绍","布局","布局约束"],
  ));
}

class MyApp extends StatelessWidget {
  final List<String> items;

  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = 'Flutter学习Demo';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${items[index]}'),
              onTap: (){
                jumpMethod(index,context);
            },
            );
          },
        ),
      ),
    );
  }
}

void jumpMethod(int index , BuildContext context){
  print(index);
  if(index == 0){
    // 导航测试
    Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) {
      return new NavigationTest();
    }));
  }else if(index == 1){
    //widget介绍
    Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
      return new WidgetIntroduce();
    }));
  }else if(index == 2){
    Navigator.push(context, new CupertinoPageRoute(builder: (BuildContext context){
      return new LayoutTest();
    }));
  }else if(index == 3){
    Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
      return new LayoutConstraintTest();
    }));
  }
  else{

  }
}

