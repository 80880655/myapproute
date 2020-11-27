import 'package:flutter/material.dart';
// import 'dart:core';

// modify:gaofeng 2020/5/7 灵活的布局,这样就不会出现 最后一个按钮出现“///”不显示的情况。

void main() => runApp(MyApp());

// 创建类
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Widget Demo',
      home: Scaffold(
        // 设置 AppBar 的背景色
        appBar: new AppBar(
          title: new Text('20200507,水平方向布局'),
          elevation: 2.5,
          // brightness: Brightness.dark,
          // backgroundColor: Colors.redAccent,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xFF0018EB),
                Color(0xFF01C1D9),
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
            ),
          ),
        ),

        body: new Container(

          // 布局， 在按钮前面增加 Expanded 就是灵活布局
          child: new Row(
            children: <Widget>[
              // modify: gaofeng 2020/5/7 灵活布局

                // 不灵活布局
                new RaisedButton(
                  // 点击事件
                  onPressed: () {},
                  color: Colors.redAccent,
                  child: new Text('Red Button'),
                ),

              //灵活布局 Expanded
              Expanded(
                child: 
                    new RaisedButton(
                  // 点击事件
                  onPressed: () {},
                  color: Colors.blueAccent,
                  child: new Text('blue Button'),
                ),
              ),

              Expanded(
                child: 
                    new RaisedButton(
                  // 点击事件
                  onPressed: () {},
                  color: Colors.yellowAccent,
                  child: new Text('yellow Button'),
                ),
              ),

              Expanded(
                child: 
                    new RaisedButton(
                  // 点击事件
                  onPressed: () {},
                  color: Colors.orangeAccent,
                  child: new Text('orange Button'),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
