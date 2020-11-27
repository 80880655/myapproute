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
    return Column(
      children: <Widget>[

        SizedBox(height:10.0),

        Row(
          children: <Widget>[
            // 时间：2020/5/20 22:20 分 ，复杂布局的实现。
            // 使用 Expanded  包裹，就可以实现自适应。
            // 对应视频 24.24
            Expanded(
              child:Container(
                height: 150.0,
              color: Colors.black,
              child: Text('XXXXXXXXXXXX'),
              ), 
            )
          ],
        ),

        SizedBox(height:10.0),

        // 第二行
        Row(
          children: <Widget>[
            Expanded(
              flex:2,
              // child:Image.network('https://www.itying.com/images/flutter/2.png',fit: BoxFit.cover,)

              child: Container(
                height:180.0,
                child:Image.network('https://www.itying.com/images/flutter/2.png',fit: BoxFit.cover,)
              ),
            ),

            // 间距
            SizedBox(width: 10,),

            Expanded(
              flex:1,
              // child:Image.network('https://www.itying.com/images/flutter/3.png',fit: BoxFit.cover,)

              child: Container(
                height:180,

                child:ListView(
                  children: <Widget>[
                    Container(
                      height:85.0,
                      child:Image.network('https://www.itying.com/images/flutter/3.png',fit: BoxFit.cover,)
                    ),

                    SizedBox(height:10.0),

                    Container(
                      height:85.0,
                      child:Image.network('https://www.itying.com/images/flutter/4.png',fit: BoxFit.cover,)
                    ),
                  ],
                  
                )
                // child:Image.network('https://www.itying.com/images/flutter/3.png',fit: BoxFit.cover,)
              ),
            ),


          ],
        )
        

      ],

    );




  }
}
