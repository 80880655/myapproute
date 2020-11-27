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

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // return MyButton('第一个按钮');

    return Row(
      children: <Widget>[
        MyButton('第1集'),
        MyButton('第2集'),
        MyButton('第3集'),
        MyButton('第4集'),
        MyButton('第5集'),
        MyButton('第6集'),
        MyButton('第7集'),
        MyButton('第8集'),
      ],
    );

  }
}

// 自定义一个按钮类
class MyButton extends StatelessWidget{

  final String text;

  // 构造函数, this.text 为必填参数
  const MyButton(this.text,{Key key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {

    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      // 必须写入监听事件 按下鼠标
      onPressed: (){

      },
    );
  }



}
