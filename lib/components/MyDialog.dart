import 'dart:async';

import 'package:flutter/material.dart';

class MyDialog extends Dialog {
  String title;
  String content;

  // MyDialog({this.title,this.content});

  MyDialog(
    this.title,
    this.content,
  );

  // 定时器的Dialog
  _showTimer(context) {
    var timer;
    timer = Timer.periodic(
      Duration(milliseconds: 2000), (t) {
      Navigator.of(context).pop();

      print('关闭定时器');
      // 取消定时器
      t.cancel();

    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return super.build(context);

    // 时间：2020/6/18 11:58分 先执行这个定时器，定时器关闭之后在执行下面的 return 方法；
    _showTimer(context);

    return Material(
      // 透明度
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          height: 300.0,
          width: 300.0,
          color: Colors.white,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                // Stack 层叠
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Text(this.title),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        child: Icon(Icons.close, size: 30.0),
                        onTap: () {
                          Navigator.of(context).pop();
                          print('close');
                        },
                      ),
                    ),
                  ],
                ),
              ),

              // 内容
              Divider(),
              Container(
                padding: EdgeInsets.all(10.0),
                // child: Text('内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容'),

                // 宽度自动平铺
                width: double.infinity,
                child: Text(
                  // '  内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容',
                  this.content,
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
