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
    // 时间：2002/5/21 14:28 分
    // 使用 listData 的 Map 数据来实现动态生成的效果。
    // 可以在本类中刚创建list 来实现，也可以直接在下面的 children 来实现。

    return ListView(
      children: listData.map(

          //时间： 2020/5/21 14：34分  在map里面增加一个方法,return 一个 Card；
          // 注释：
          (value) {
            return Card(
                margin: EdgeInsets.all(10.0),
                child: Column(children: <Widget>[
                  // 使用 AspectRatio 来铺展图片
                  AspectRatio(
                    // aspectRatio: 16/9,
                    aspectRatio: 20 / 9,
                    child: Image.network(
                      // 'https://www.itying.com/images/flutter/2.png',
                      value['imageUrl'],
                      fit: BoxFit.cover,
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            // 'https://www.itying.com/images/flutter/4.png'
                            value['imageUrl'],      
                        )),
                    title: Text(
                      // 'XXXXXXX',
                      value['title'],
                      style: TextStyle(fontSize: 24.0),
                    ),
                    subtitle: Text(
                      // 'XXXXXXXXXXXXX',
                      value['author'],
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ]));
          }).toList(),
    );
  }
}
