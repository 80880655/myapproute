import 'package:flutter/material.dart';
import 'package:myapproute/pages/class/IGenericDataProvider.dart';
import 'package:myapproute/pages/class/TransferDataEntity.dart';

class IGenericDataWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // 2020/7/1 14:01 传递的是泛型类，随便传递什么都可以，下面的代码也需要更改成对应的数据结构即可
    final data = IGenericDataProvider.of<TransferDataEntity>(context);

    // final data = IGenericDataProvider.of<dynamic>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Inherited泛型方式传递数据"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            height: 40.0,
            child: Text(data.name),
          ),
          Container(
            alignment: Alignment.center,
            height: 40.0,
            child: Text(data.id),
          ),
          Container(
            alignment: Alignment.center,
            height: 40.0,
            child: Text("${data.age}"),
          ),
        ],
      ),
    );
  }
}
