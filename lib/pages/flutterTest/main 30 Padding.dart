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
  // 时间：2020/5/20 padding 页面布局, 使用 padding 来布局

  // 在最外面使用一个 padding 来布局，这样右边图片的右边就有间隙了。

  // 思路：在最外面包裹一层，然后在里面也使用 padding 来包裹即可实现。

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.7,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://www.itying.com/images/flutter/1.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://www.itying.com/images/flutter/2.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://www.itying.com/images/flutter/3.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://www.itying.com/images/flutter/4.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://www.itying.com/images/flutter/5.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://www.itying.com/images/flutter/6.png',
              fit: BoxFit.cover,
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://www.itying.com/images/flutter/1.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://www.itying.com/images/flutter/2.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://www.itying.com/images/flutter/3.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://www.itying.com/images/flutter/4.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://www.itying.com/images/flutter/5.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://www.itying.com/images/flutter/6.png',
              fit: BoxFit.cover,
            ),
          ),

          // Image.network('https://www.itying.com/images/flutter/1.png',fit: BoxFit.cover,),
          // Image.network('https://www.itying.com/images/flutter/2.png',fit: BoxFit.cover,),
          // Image.network('https://www.itying.com/images/flutter/3.png',fit: BoxFit.cover,),
          // Image.network('https://www.itying.com/images/flutter/4.png',fit: BoxFit.cover,),
          // Image.network('https://www.itying.com/images/flutter/5.png',fit: BoxFit.cover,),
          // Image.network('https://www.itying.com/images/flutter/6.png',fit: BoxFit.cover,),
          // Image.network('https://www.itying.com/images/flutter/1.png',fit: BoxFit.cover,),
          // Image.network('https://www.itying.com/images/flutter/2.png',fit: BoxFit.cover,),
          // Image.network('https://www.itying.com/images/flutter/3.png',fit: BoxFit.cover,),
          // Image.network('https://www.itying.com/images/flutter/4.png',fit: BoxFit.cover,),
          // Image.network('https://www.itying.com/images/flutter/5.png',fit: BoxFit.cover,),
          // Image.network('https://www.itying.com/images/flutter/6.png',fit: BoxFit.cover,),
        ],
      ),
    );
  }
}
