import 'package:flutter/material.dart';

class AppBarDemo extends StatefulWidget {
  @override
  _AppBarDemoState createState() => _AppBarDemoState();
}

class _AppBarDemoState extends State<AppBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBarDemoPage'),

        //标题居中显示
        centerTitle: true,

        // 时间：2020/6/9 22:43分 增加AppBar 按钮图标
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print('menu');
            }),

        // 在 AppBar 右边增加按钮图标
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('search');
              }),
          IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                print('settings');
              })
        ],
      ),
      body: Text('你好flutter'),
    );
  }
}
