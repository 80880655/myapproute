// 快捷键： flm
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// 自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Demo')),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      // 水平布局
      scrollDirection: Axis.horizontal,

      children: <Widget>[

        Container(
          width: 180.0,
          color: Colors.red,
        ),

        Container(
          width: 180.0,
          color: Colors.yellowAccent,
        ),

        Container(
          width: 180.0,
          color: Colors.blue,
        ),

        Container(
          width: 180.0,
          color: Colors.orange,
        ),

      ],
    );
  }
}
