// 快捷键： flm
import 'package:flutter/material.dart';
// import 'dart:mirrors';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Text Test')),
      body: Text('body'),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(title: Text('主页'), icon: Icon(Icons.home,size: 32.0,),backgroundColor: Colors.black38),
        BottomNavigationBarItem(title: Text('查询'), icon: Icon(Icons.search,size: 32.0,),backgroundColor: Colors.black38),
        BottomNavigationBarItem(title: Text('分类'), icon: Icon(Icons.category,size: 32.0,),backgroundColor: Colors.black38),
        BottomNavigationBarItem(title: Text('设置'), icon: Icon(Icons.settings,size: 32.0,),backgroundColor: Colors.black38),
      ]),
    ));
  }
}

// 时间：2020/5/26 10:13 StatefulWidget
// 目标： 练习 BottomNavigationBar  组件，实现底部导航条的效果。
