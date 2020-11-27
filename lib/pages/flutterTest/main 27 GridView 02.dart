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
  // 时间：2020/5/19 16:54分 循环遍历 一组Widget的组件。
  // 1、 使用 for 循环

  List<Widget> _getListData() {
    List<Widget> list = new List();

    for (var i = 0; i < 20; i++) {
      list.add(Container(
        alignment: Alignment.center,
        child: Text(
          '这是第$i条数据',
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
        color: Colors.blueAccent,

        // height: 400.0,    // 直接设置高度无效， 必须通过 childAspectRatio 宽和高的比例来实现


      ));
    } 
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // 显示3列， 一行的Widget 数量
      crossAxisCount: 2,

      // 左右的缝隙距离
      crossAxisSpacing: 2.0,

      // 上下缝隙距离
      mainAxisSpacing: 2.0,

      // 直接设置高度无效， 必须通过 childAspectRatio 宽和高的比例来实现;  标识 宽度/高度 的系数
      childAspectRatio: 0.7,


      // children: <Widget>[
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      // ],

      // 调用这个方法
      children: this._getListData(),



    );
  }
}
