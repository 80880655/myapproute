import 'package:flutter/material.dart';
import 'package:myapproute/pages/class/TransferDataEntity.dart';

class DataTransferByConstructorPage extends StatelessWidget {
  final TransferDataEntity data;

  DataTransferByConstructorPage({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("构造器方式")),
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
        ],
      ),
    );
  }
}
