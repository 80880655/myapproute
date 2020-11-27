// 快捷键： flm
import 'package:flutter/material.dart';

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

  // 时间：2020/5/19 14:30分 使用循环遍历动态生成页面; 自定义方法

  // 自定义一个方法来实现下面3个列表的代码
  List<Widget> _getListData(){
    return [
      ListTile(
          title:Text('一个文本列表'),
        ),
        ListTile(
          title:Text('一个文本列表'),
        ),
        ListTile(
          title:Text('一个文本列表1'),
        ),
    ];
  }



  @override
  Widget build(BuildContext context) {

    // return ListView(
    //   children: <Widget>[
    //     ListTile(
    //       title:Text('一个文本列表'),
    //     ),
    //     ListTile(
    //       title:Text('一个文本列表'),
    //     ),
    //     ListTile(
    //       title:Text('一个文本列表'),
    //     ),
    //   ],
    // );


    // 方法的使用
    return ListView(
      children: _getListData(),
    );


  }
}
