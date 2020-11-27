import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    // 时间：2020/5/11 11:42 导航演示
    title: "导航演示01",
    home: new FirstScreen(),
  ));
}

// class FirstScreen extends StatefulWidget {
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // BuildContext  上下文
    // 返回脚手架
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '导航页面',
        ),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('查看商品详细页'),
          // 按钮的响应事件，当按钮按下的时候有什么反应
          onPressed: () {
            // 上下文 context，route 路由组件
            // Navigator.push(context, route),
            // Navigator.push 打开页面
            Navigator.push(
              context,
              MaterialPageRoute(
                // 新建一个页面 SecondScreen()
                builder: (context) => new SecondScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('新页面商品详细页'),
      ),
      body: RaisedButton(
        child: Text('返回'),
        onPressed: () {
          // Navigator.pop 退出当前页面
          Navigator.pop(
            context,
          );
        },
      ),
    );
  }
}
