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
        body: HomeContent(),
      ),
    );
  }
}

// 时间：2020/5/19 16:41分  使用 ListView.builder 方法来循环遍历 listDat.dart 中的 map数据。

class HomeContent extends StatelessWidget {
  // 自定义循环方法
  Widget _getListData(context,index) {
    return 
      
    ListTile(
      title: Text(listData[index]["title"].toString()),
      leading: Image.network(listData[index]["imageUrl"]),
      subtitle: Text(listData[index]["author"]),
    );
  }



  @override
  Widget build(BuildContext context) {
    // ListView.builder 需要传入2个参数
    return ListView.builder(
      itemCount: listData.length,
      // 这里是赋值给方法，所以不需要增加后面的括号
      itemBuilder: this._getListData,
    );

  }
}
