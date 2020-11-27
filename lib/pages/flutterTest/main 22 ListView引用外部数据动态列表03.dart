// 快捷键： flm
import 'package:flutter/material.dart';
import 'package:myapproute/res/listData.dart';

void main() {
  runApp(MyApp());
}

// 自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Demo')),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  // 时间：2020/5/19 14:53分 引入外部的数据 listData.dart

  List<Widget> _getListData() {
    // 时间：2020/5/19 15:01 分  给ListTile 赋值, 使用外部的 LSIT 数据类型实现
    // 下面已经带有循环遍历的方法

    var tempList = listData.map((value) {
      return ListTile(

        leading: Image.network(value["imageUrl"]),
        title: Text(
          value["title"],
        ),

        subtitle: Text(value["author"]),

      );
    });

    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    // 方法的使用
    return ListView(
      children: this._getListData(),
    );
  }
}

class ListTitle {}
