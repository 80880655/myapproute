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

        new Container(
          decoration: new BoxDecoration(
            color:Colors.yellowAccent
          ),
          padding: EdgeInsets.all(5.0),
          child: new Text(
            'lion',

            // 文字居中
            textAlign: TextAlign.center,

            maxLines: 1,

            // 显示不完，就显示...，切割多余的部分
            overflow: TextOverflow.ellipsis,

            style: TextStyle(
              // 文字大小
              fontSize: 25.0,
              // 文字颜色
              color: Colors.black,
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
