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
    // 时间：2002/5/21 11:47分   ListView 组件下面不能在嵌套使用 ListView 组件，否则就报错了
    return ListView(
      children: <Widget>[
        // 卡片1
        Card(
          margin: EdgeInsets.all(10),
          child: Column(children: <Widget>[
            //  列表1
            ListTile(
              title: Text(
                '张三',
                style: TextStyle(fontSize: 28.0),
              ),
              subtitle: Text('高级工程师'),
              leading: Icon(Icons.account_box, color: Colors.lightBlueAccent),
            ),
            ListTile(
              title: Text(
                '电话：123232132121',
                style: TextStyle(fontSize: 14.0),
              ),
            ),
            ListTile(
              title: Text(
                '地址：XXXXXXXXXXXXX',
                style: TextStyle(fontSize: 12.0),
              ),
            ),
          ]),
        ),

        // 分割线
        Divider(
          height: 1.0,
          // 起始缩进距离
          indent: 10.0,
          // 终点缩进距离
          endIndent: 10.0,
          color: Colors.red,
        ),

        // 卡片2
        Card(
          margin: EdgeInsets.all(10),
          child: Column(children: <Widget>[
            //  列表1
            ListTile(
              title: Text(
                '李四',
                style: TextStyle(fontSize: 28.0),
              ),
              subtitle: Text('高级工程师'),
              leading: Icon(Icons.account_box, color: Colors.lightBlueAccent),
            ),
            ListTile(
              title: Text(
                '电话：123232132121',
                style: TextStyle(fontSize: 14.0),
              ),
            ),
            ListTile(
              title: Text(
                '地址：XXXXXXXXXXXXX',
                style: TextStyle(fontSize: 12.0),
              ),
            ),
          ]),
        ),

        // 分割线
        Divider(
          height: 1.0,
          // 起始缩进距离
          indent: 10.0,
          // 终点缩进距离
          endIndent: 10.0,
          color: Colors.red,
        ),

        // 卡片3
        Card(
          margin: EdgeInsets.all(10),
          child: Column(children: <Widget>[
            //  列表1
            ListTile(
              title: Text(
                '王五',
                style: TextStyle(fontSize: 28.0),
              ),
              subtitle: Text('高级工程师'),
              leading: Icon(Icons.account_box, color: Colors.lightBlueAccent),
            ),
            ListTile(
              title: Text(
                '电话：123232132121',
                style: TextStyle(fontSize: 14.0),
              ),
            ),
            ListTile(
              title: Text(
                '地址：XXXXXXXXXXXXX',
                style: TextStyle(fontSize: 12.0),
              ),
            ),
          ]),
        ),
        // 分割线
        Divider(
          height: 1.0,
          // 起始缩进距离
          indent: 10.0,
          // 终点缩进距离
          endIndent: 10.0,
          color: Colors.red,
        ),
      ],
    );
  }
}
