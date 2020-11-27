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
  @override
  Widget build(BuildContext context) {
    return ListView(

      padding: EdgeInsets.all(15),

      children: <Widget>[

        ListTile(
          //图标
          leading: Icon(Icons.hearing),
          //大标题
          title: Text('1.达到了工作水平一样。其实在实战和基础之间还需要有一个过度，人们喜欢称之为进阶'),
          //小标题
          subtitle: Text('dsadsadsadsa'),
        ),

        ListTile(
          //图标,图标大小
          leading: Icon(Icons.highlight,size: 40,),
          title: Text('2.达到了工作水平一样。其实在实战和基础之间还需要有一个过度，人们喜欢称之为进阶'),
          subtitle: Text('dsadsadsadsa'),
        ),

        ListTile(
          title: Text('3.达到了工作水平一样。其实在实战和基础之间还需要有一个过度，人们喜欢称之为进阶'),
          subtitle: Text('dsadsadsadsa'),
          // 图标放置在后面
          trailing: Icon(Icons.history),
        ),

        ListTile(
          // 放置一个网络图片
          leading: Image.network('https://static.ws.126.net/163/f2e/www/index20170701/images/imgdf.png'),
          title: Text('4.达到了工作水平一样。其实在实战和基础之间还需要有一个过度，人们喜欢称之为进阶'),
          subtitle: Text('dsadsadsadsa'),
        ),

      ],
    );
  }
}
