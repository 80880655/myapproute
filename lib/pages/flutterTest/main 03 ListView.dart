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
            color: Colors.greenAccent,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(10.0),

            // M：20200505 gaofeng,这里 new 一个ListView 也可以不用 new 直接使用也是可以的。
            child: ListView(

              // 1、横向排列
              scrollDirection: Axis.horizontal,
              
              // 2、添加一个数组
              children: <Widget>[

                // 3、填充格子
                new Container(
                  width: 220.0,
                  color: Colors.lightBlue,
                ),

                new Container(
                  width: 220.0,
                  color: Colors.orangeAccent,
                ),

                new Container(
                  width: 220.0,
                  color: Colors.deepOrange,
                ),

                new Container(
                  width: 220.0,
                  color: Colors.yellowAccent,
                ),
                
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
