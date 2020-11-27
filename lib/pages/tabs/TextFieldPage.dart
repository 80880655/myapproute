import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单演示页面'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),


        // 时间：2020/6/16 9:35分
        child: TextDemo(),

      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(children: <Widget>[
          //1、在真机上面，会弹出虚拟键盘
          TextField(),

          SizedBox(height: 10.0),
          TextField(
            decoration: InputDecoration(
              // 暗示文字
              hintText: '请输入搜索的内容',
            ),
          ),

          SizedBox(height: 10.0),
          TextField(
            decoration: InputDecoration(
              // 暗示文字
              hintText: '请输入搜索的内容',
              border: OutlineInputBorder(),
            ),
          ),

          SizedBox(height: 10.0),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
              // 暗示文字
              hintText: '多行文本框',
              border: OutlineInputBorder(),
            ),
          ),

          // 用户名
          SizedBox(height: 10.0),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '用户名',
            ),
          ),

          // 密码框
          SizedBox(height: 10.0),
          TextField(
            // 密码框
            obscureText: true,
            decoration: InputDecoration(
              // 暗示文字
              hintText: '密码',
              border: OutlineInputBorder(),
              labelText: '密码',
            ),
          ),

          // 带图标的输入框
          SizedBox(height: 10.0),
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.people),
              // 暗示文字
              // hintText: '请输入用户名',
              border: OutlineInputBorder(),
              labelText: '请输入用户名',
            ),
          ),
        ]),
    );
  }
}
