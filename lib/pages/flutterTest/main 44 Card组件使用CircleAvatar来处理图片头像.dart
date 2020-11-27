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
    // 时间：2002/5/21 12:02分   Card 02 组件，图文卡片显示;
    // 使用 设置圆形的边框 ClipOval 的边框。

    return ListView(
      children: <Widget>[
        Card(
            margin: EdgeInsets.all(10.0),
            child: Column(children: <Widget>[
              // 使用 AspectRatio 来铺展图片
              AspectRatio(
                // aspectRatio: 16/9,
                aspectRatio: 20 / 9,
                child: Image.network(
                  'https://www.itying.com/images/flutter/2.png',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                // 设置圆形的边框 ClipOval

                // 处理图片方法1：
                // leading: ClipOval(
                //   child:Image.network('https://www.itying.com/images/flutter/3.png',fit: BoxFit.cover,height: 60.0,width: 60.0,),
                // ),


                //处理图片方法2：   CircleAvatar 处理图像
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.itying.com/images/flutter/4.png')),
                title: Text(
                  'XXXXXXX',
                  style: TextStyle(fontSize: 24.0),
                ),
                subtitle: Text(
                  'XXXXXXXXXXXXX',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ]))
      ],
    );
  }
}
