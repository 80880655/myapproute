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

// 时间：2020/5/19 16:03分  使用 ListView.builder 方法来循环遍历

class HomeContent extends StatelessWidget {
  //自定义
  List list = new List();

  // 构造函数
  HomeContent() {
    for (var i = 0; i < 20; i++) {
      this.list.add(ListTile(
            title: Text("我是第$i条数据"),
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    // return Text('XXX');

    // ListView.builder 需要传入2个参数
    return ListView.builder(
      itemCount: this.list.length,

      itemBuilder: (context,index){
        // return this.list[index];

        return ListTile(
          title: Text(this.list[index].toString()),
        );


      },
    );
  }
}
