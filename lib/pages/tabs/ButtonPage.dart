import 'package:flutter/material.dart';
// import 'package:myapproute/pages/flutterTest/main%2048%20Wrap%E7%BB%84%E4%BB%B6%2001.dart';

import 'package:myapproute/components/MyButton.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('20200610 按钮演示页面'),

        // IconButton 按钮
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                print('IconButton');
              })
        ],
      ),

      // 2020/6/10 21:56分 浮动按钮  begin
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.black,
          size: 40.0,
        ),
        onPressed: () {
          print('floatingActionButton');
        },
        backgroundColor: Colors.yellow,
      ),
      // 默认显示在 右下角，下面这句让浮动按钮显示在底部中间
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      // 2020/6/10 21:56分 浮动按钮  end

      

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            RaisedButton(
                child: Text('RaisedButton按钮,普通按钮'),
                onPressed: () {
                  print('普通按钮');
                }),
            SizedBox(width: 10),
            RaisedButton(
                child: Text('有颜色按钮'),
                color: Colors.blue,
                onPressed: () {
                  print('有颜色按钮');
                }),
            SizedBox(width: 10),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            RaisedButton(
                child: Text('有阴影按钮'),
                color: Colors.blue,
                // 阴影
                elevation: 20.0,
                onPressed: () {
                  print('有阴影按钮');
                }),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Container(
              height: 50.0,
              width: 200.0,
              child: RaisedButton(
                  child: Text('设置高度和宽度'),
                  color: Colors.redAccent,
                  onPressed: () {
                    print('设置高度和宽度');
                  }),
            )
          ]),
          SizedBox(height: 10.0),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Expanded(
                child: Container(
              // 左右缩进
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
                  child: Text('自适应按钮'),
                  color: Colors.blue,
                  onPressed: () {
                    print('自适应按钮');
                  }),
            ))
          ]),
          SizedBox(height: 10.0),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Expanded(
                child: Container(
              // 左右缩进
              margin: EdgeInsets.all(10.0),
              child: RaisedButton.icon(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  // shape 增加按钮的圆角
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  label: Text('图标按钮'),
                  // 文字颜色
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: () {
                    print('图标按钮');
                  }),
            ))
          ]),
          SizedBox(height: 10.0),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Expanded(
                child: Container(
              height: 80.0,
              // 左右缩进
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
                  // 长按出现水波纹
                  splashColor: Colors.red,
                  // icon: Icon(
                  //   Icons.search,
                  //   color: Colors.white,
                  // ),
                  // shape 原形按钮
                  shape: CircleBorder(side: BorderSide(color: Colors.white)),
                  child: Text('圆形按钮'),
                  // 文字颜色
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: () {
                    print('圆形按钮');
                  }),
            ))
          ]),

          SizedBox(height: 10.0),
          FlatButton(
            textColor: Colors.white,
            color: Colors.blue,
            child: Text('扁平按钮'),
            onPressed: () {
              print('扁平按钮');
            },
          ),

          SizedBox(height: 10.0),
          OutlineButton(
            textColor: Colors.black,
            // color: Colors.red,   //// 没有效果
            child: Text('线框按钮'),
            onPressed: () {
              print('线框按钮');
            },
          ),

          // 按钮组 ButtonBar
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            ButtonBar(children: <Widget>[
              RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Text('登录'),
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: () {
                    print('图标按钮');
                  }),

              RaisedButton(
                  // shape 增加按钮的圆角
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Text('注册'),
                  // 文字颜色
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: () {
                    print('图标按钮');
                  }),

              // 自定义按钮组件, 注意数值一定是 double 类型
              MyButton(
                text: "自定义按钮",
                color: Colors.redAccent,
                width: 100.0,
                height: 50.0,
                pressed: () {
                  print('自定义组件');
                },
              ),

              MyButton(
                text: "自定义按钮，使用Pressed.dart类",
                color: Colors.redAccent,
                width: 130.0,
                height: 60.0,
                pressed: () {
                  print('自定义组件');
                },
              ),
            ]),
          ]),
        ],
      ),
    );
  }
}
