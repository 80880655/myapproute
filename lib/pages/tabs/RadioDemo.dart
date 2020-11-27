import 'dart:developer';

import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int sex = 1;
  bool flag = true;

  // 2020/6/16 14:42 抽离下面重复的代码。
  void _sexChang(value) {
    setState(() {
      print(value);
      this.flag = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Radio')),
      body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Row(children: <Widget>[
                Text('男'),
                Radio(
                    value: 1,
                    groupValue: this.sex,
                    onChanged: (val) {
                      setState(() {
                        this.sex = val;
                      });
                    }),
                Text('女'),
                Radio(
                    value: 2,
                    groupValue: this.sex,
                    onChanged: (val) {
                      setState(() {
                        this.sex = val;
                      });
                    })
              ]),
              Row(children: <Widget>[
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('${this.sex}'),
                      Text(this.sex == 1 ? '男' : '女'),
                    ]),
              ]),

              RadioListTile(
                value: 1,
                groupValue: this.sex,
                title: Text('RadioListTile1'),
                subtitle: Text('RadioListTile'),
                secondary: Icon(Icons.print),
                onChanged: (v) {
                  setState(() {
                    this.sex = v;
                  });
                },
                // 选中高亮
                selected: this.sex == 1,
              ),
              RadioListTile(
                value: 2,
                groupValue: this.sex,
                title: Text('RadioListTile1'),
                subtitle: Text('RadioListTile'),
                // secondary: Icon(Icons.print),

                secondary: Image.network(
                    'https://www.itying.com/images/flutter/4.png'),
                
                
                onChanged: (v) {
                  setState(() {
                    this.sex = v;
                  } 
                  );
                },

                // 选中高亮
                selected: this.sex == 2,

                activeColor: Colors.redAccent,
              ),

              // Switch  2020/6/16 14:27分
              SizedBox(height: 40.0),
              Switch(
                  value: this.flag,
                  // onChanged: (v) {
                  //   setState(() {
                  //     this.flag = v;
                  //     print(this.flag);
                  //   });
                  // }

                  onChanged: this._sexChang,
                  
                  )
            ],
          )),
    );
  }
}
