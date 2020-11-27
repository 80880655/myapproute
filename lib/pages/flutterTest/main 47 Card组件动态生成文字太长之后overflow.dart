// 快捷键： flm

import 'package:flutter/material.dart';
import 'package:myapproute/res/listData.dart';

// import 'dart:mirrors';

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

    return ListView(
      children: listData.map(

          //时间： 2020/5/21 16：25分  在map里面增加一个方法,return 一个 Card；
          // 注释：文字太长之后，使用 overflow ：TextOverflow.ellipsis  将长文字后面的 变成 ....
          (value) {
        return Card(
            margin: EdgeInsets.all(10.0),
            child: Column(children: <Widget>[
              // 使用 AspectRatio 来铺展图片
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  value['imageUrl'],
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                  value['imageUrl'],
                )),
                title: Text(
                  value['title'],
                  style: TextStyle(fontSize: 24.0),
                ),
                subtitle: Text(
                  // value['author'],
                  // 文字太长之后，使用 overflow ：TextOverflow.ellipsis  将长文字后面的 变成 ....
                  value['description'],
                  // 显示内容的行数
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ]));
      }).toList(),
    );
  }
}
