import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  var flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CheckBoxDemo 演示')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(children: <Widget>[
            Checkbox(
                // 选中的颜色变化
                activeColor: Colors.red,
                value: this.flag,
                onChanged: (val) {
                  setState(() {
                    this.flag = val;
                  });
                }),
            Text(this.flag ? '选中' : '未选中'),
          ]),


          SizedBox(height: 20),
          // CheckboxListTile
          CheckboxListTile(
            value: this.flag,
            onChanged: (val) {
              setState(() {
                this.flag = val;
              });
            },
            title: Text('标题'),
            subtitle: Text('这是二级标题'),
          ),

          // 增加一个线
          Divider(),
          CheckboxListTile(
            value: this.flag,
            onChanged: (val) {
              setState(() {
                this.flag = val;
              });
            },
            title: Text('标题'),
            subtitle: Text('这是二级标题'),

            // 设置图标
            secondary: Icon(Icons.help),

          ),



          SizedBox(height: 20),
          RaisedButton(
            child: Text('获取'),
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () {
              print(this.flag);
            },
          ),
        ],
      ),
    );
  }
}
