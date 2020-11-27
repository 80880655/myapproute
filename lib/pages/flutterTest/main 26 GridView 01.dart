// 快捷键： flm
import 'package:flutter/material.dart';
import 'package:myapproute/res/listData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Demo')),
        body: LayoutDemo(),
      ),
    );
  }
}


class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GridView.count(

      // 显示3列， 一行的Widget 数量
      crossAxisCount: 3,

      children: <Widget>[
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
      ],

    );
  }
}

