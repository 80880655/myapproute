import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // modify:gaofeng 2020/5/7 17:35 Stack 元素
    var stack=new Stack(

      // 2、调整字体的位置,FractionalOffset 就是和html 中的 Offset 一样的意思， x坐标和 y坐标。
      alignment: const FractionalOffset(0.5, 0.9),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage(
            'https://dss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1713396441,1487163637&fm=26&gp=0.jpg'
          ),
          radius: 100.0,
        ),

        //mdoify:gaofeng 2020/5/8 11:21 定位, Positioned 必须配合 Stack 来使用
        new Positioned(
          top: 10.0,
          left: 10.0,
          child: new Text(
            'Lion',
            style: TextStyle(
              // 文字大小
              fontSize: 25.0,
              // 文字颜色
              color: Colors.red,
            ),
          ),
        ),

        new Positioned(
          bottom: 10.0,
          right: 30.0,
          child: new Text('Istdsdsds',
            style: TextStyle(
              fontSize:30.0,
              color:Colors.yellowAccent,
            ),
          
          ),
        ),

      ],
    );


    return MaterialApp(
      title: 'Widget Demo',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('20200507 层叠布局 StackWidget'),
        ),

        body: Center(
          //放置上面声明好的 变量 
          child: stack,
        ),

      ),
    );
  }
}
