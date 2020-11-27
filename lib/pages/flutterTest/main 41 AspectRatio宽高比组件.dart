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

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 时间：2002/5/21 10:17分  AspectRatio 组件的使用; 这个组件的作用是设置子元素 child 的宽高比。
    return Container(
      width: 500.0,
      child: AspectRatio(
        aspectRatio: 5.0 / 2.0,
        child: Container(
          color: Colors.redAccent,
        ),
      ),
    );
  }
}
