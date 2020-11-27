import 'package:flutter/material.dart';
import 'package:myapproute/Action/Pressed.dart';

// 自定义按钮
class MyButton extends StatelessWidget {
  final double height;
  final double width;
  final color;
  final text;
  final pressed;
  final double margin;

  // static Pressed pressed2=new Pressed();

  // var pressed2=new Pressed();

  const MyButton({
    this.text = '',
    this.height = 30.0,
    this.width = 80.0,
    this.color = null,
    this.margin = 10.0,
    this.pressed = null,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: this.height,
        width: this.width,
        color: this.color,
        margin: EdgeInsets.all(this.margin),
        child: RaisedButton(
          child: Text(this.text),
          onPressed: this.pressed,
          // onPressed: this.pressed2.onPressed(),
        ));
  }
}
