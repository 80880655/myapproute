import 'package:flutter/material.dart';

class IconTestPage extends StatefulWidget {
  @override
  _IconTestPageState createState() => _IconTestPageState();
}

class _IconTestPageState extends State<IconTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('第三方ICON的使用')),
      body: Column(
        children: <Widget>[
          // Text('2222'),


          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(IconData(0xe62f,fontFamily: 'MyIcons')),

              Icon(IconData(0xe614,fontFamily: 'MyIcons')),

              Icon(IconData(0xe654,fontFamily: 'MyIcons'),size: 40.0,color: Colors.black,),

              Icon(IconData(0xe67b,fontFamily: 'MyIcons'),size: 40.0,color: Colors.redAccent,),



            ],
          ),
        ],
      )
    );
  }
}


