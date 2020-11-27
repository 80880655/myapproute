// 快捷键： flm

import 'package:flutter/material.dart';
import 'package:myapproute/res/listData.dart';

// import 'dart:mirrors';

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

// 时间：2020/5/26 10:13 
// 目标：点击按钮实现Text 文本的变化;
// 当前使用的是 StatelessWidget 组件，

class LayoutDemo extends StatelessWidget {

  int countNum=1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height:200.0),
        Text('${this.countNum}'),
        SizedBox(height:20.0),
        RaisedButton(
          child: Text("按钮"),
          onPressed: (){
            this.countNum++;
            print(this.countNum);
          })
      ],
    );

  }
}