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

// 时间：2020/5/19 16:03分  使用 ListView.builder 方法来循环遍历 listDat.dart 中的 map数据.
// 参考视频：D:\Program Files\JiJiDown\Download\Dart Flutter教程_Dart Flutter入门实战视频教程-2020年新出-第14讲以后是Flutter教程
//  第22.22 视频

class HomeContent extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // return Text('XXX');

    // ListView.builder 需要传入2个参数
    return ListView.builder(
      itemCount: listData.length,

      itemBuilder: (context,index){

        return ListTile(
          title: Text(listData[index]["title"].toString()),
        );


      },
    );
  }
}
