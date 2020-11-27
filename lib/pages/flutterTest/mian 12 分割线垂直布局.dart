import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // modify:gaofeng 2020/5/8 12:00 卡片布局, Column 垂直布局组件
    var card=new Card(
      
      child: Column(
        children: <Widget>[

          ListTile(
            title: Text(
              '吉林省吉林市昌邑区',
              style: TextStyle(
                fontWeight: FontWeight.w100,),         
            ),
            subtitle:Text('张三: 1234332321321'),
            leading:  new Icon(Icons.account_box,color:Colors.lightBlueAccent),
          ),

          // 分割线
          new Divider(
            height: 1.0,
            // 起始缩进距离
            indent: 10.0,
            // 终点缩进距离
            endIndent: 10.0,
            color: Colors.red,
          ),

          ListTile(
            title: Text(
              '吉林省吉林市昌邑区',
              style: TextStyle(
                fontWeight: FontWeight.w100,),         
            ),
            subtitle:Text('李四: 1234332321321'),
            leading:  new Icon(Icons.account_box,color:Colors.lightBlueAccent),
          ),

          // 分割线
          new Divider(
            color: Colors.blue,
          ),

          ListTile(
            title: Text(
              '北京市海淀区中国科技大学',
              style: TextStyle(
                fontWeight: FontWeight.w100,),         
            ),
            subtitle:Text('王五: 1234332321321'),
            leading:  new Icon(Icons.account_box,color:Colors.lightBlueAccent),
          ),

          // 分割线
          new Divider(),
      
        ],
      ),
    );

    
    return MaterialApp(
      title: 'Widget Demo',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('20200507 层叠布局 StackWidget'),
        ),

        body: Center(
          //放置上面声明好的 变量 
          child: card,
        ),

      ),
    );
  }
}
