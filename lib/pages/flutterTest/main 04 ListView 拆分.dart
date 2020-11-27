import 'package:flutter/material.dart';
// import 'dart:core';

void main() => runApp(MyApp());

// 创建类
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '2020/5/7,Demo02 ListView',
      home: Scaffold(
        appBar: new AppBar(title: new Text('2020/5/7,Demo02 ListView')),
        body: Center(

          child: Container(

            height: 300.0,
            
            child: Mylist(),

          ),
        ),
      ),
    );
  }
}


// modify:gaofeng 2020/5/7 11:23
// Desc: 将上面的 MyApp 进行拆分，flutter 里面万事都是组件，所以可以将list 拆分出来，这样程序结构上就会简化得多。
// 重写方法的时候 直接敲打 build 系统自己会将程序结构显示出来。
// Widget 就是工具箱， ListView 是其中一个工具，所以直接拆分出来。
// 注意： 一定是 StatelessWidget  不要打错词了
class Mylist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      // 1、横向排列
      scrollDirection: Axis.horizontal,

      // 2、添加一个数组
      children: <Widget>[
        // 3、填充格子
        new Container(
          width: 220.0,
          color: Colors.redAccent,
        ),

        new Container(
          width: 220.0,
          color: Colors.orangeAccent,
        ),

        new Container(
          width: 220.0,
          color: Colors.redAccent,
        ),

        new Container(
          width: 220.0,
          color: Colors.yellowAccent,
        ),
      ],
    );
  }
}
