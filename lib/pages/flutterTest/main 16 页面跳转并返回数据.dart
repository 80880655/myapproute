import 'package:flutter/material.dart';

// 时间：2020/5/11 16:27 子页面返回数据
//  使用 pop 方法，返回上个页面，并附上参数

void main() {
  runApp(
    MaterialApp(
      title: '页面跳转返回数据',
      home: FirstPage(),
    ),
  );
}

// stlss 快捷键
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('找XXX要电话！'),
      ),
      body: Center(
        // 创建一个组件 RouteButton
        child: RouteButton(),
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        // context 上下文，代表传递上下文
        _navigateToXiaoJieJie(context);
      },
      child: Text('去找小姐姐ABC'),
    );
  }

  // 创建一个内部的方法, 后面增加 async 异步;

  // await关键字必须在async函数内部使用 
  // 调用async函数必须使用await关键字
  // context：代表上下文，也就是类似windows中的句柄，指的是当前的这个页面窗口
  _navigateToXiaoJieJie(BuildContext context) async {
    // await 等待结果
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => XiaoJieJie()));

    // SnackBar
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('$result'),
    ));
  }
}

class XiaoJieJie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('我是小姐姐'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('大长腿小姐姐'),
              onPressed: (){
                Navigator.pop(context,'大长腿小姐姐:21321321321');
              },
            ),

            RaisedButton(
              child: Text('小蛮腰小姐姐'),
              onPressed: (){
                Navigator.pop(context,'小蛮腰小姐姐:21321321321');
              },
            ),
          ],
        ),
      ),
    );
  }
}
