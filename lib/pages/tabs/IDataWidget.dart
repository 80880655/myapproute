import 'package:flutter/material.dart';
import 'package:myapproute/pages/class/IDataProvider.dart';

class IDataWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = IDataProvider.of(context).data;

    return Scaffold(
      appBar: AppBar(title: Text('Inherited 方式传递数据')),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 40.0,
            alignment: Alignment.center,
            child: Text(data.id),
          ),
          Container(
            width: double.infinity,
            height: 40.0,
            alignment: Alignment.center,
            child: Text(data.name),
          ),
          Container(
            width: double.infinity,
            height: 40.0,
            alignment: Alignment.center,
            child: Text("${data.age}"),
          ),

          IDataChildWidget(),
        ],
      ),
    );
  }
}



class IDataChildWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = IDataProvider.of(context).data;
    return Container(
      child: Text(data.name),
    );
  }
}
