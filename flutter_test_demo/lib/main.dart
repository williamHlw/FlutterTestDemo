import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_demo/class/NavigationTest.dart';
void main() {
  runApp(MyApp(
    items: ["测试1","测试2"],
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
    Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) {
            return new NavigationTest(); //不传值的跳转
    }));
  }else if(index == 1){

  }else{

  }
}

