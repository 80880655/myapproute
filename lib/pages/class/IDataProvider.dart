
import 'package:flutter/material.dart';
import 'package:myapproute/pages/class/TransferDataEntity.dart';

class IDataProvider extends InheritedWidget {
  final TransferDataEntity data;

  IDataProvider({Widget child, this.data}) : super(child: child);

  @override
  bool updateShouldNotify(IDataProvider oldWidget) {
    return data != oldWidget.data;
  }

  static IDataProvider of(BuildContext context) {

    // 旧方法 inheritFromWidgetOfExactType ； 使用 dependOnInheritedWidgetOfExactType 代替
    // return context.inheritFromWidgetOfExactType(IDataProvider);

    return context.dependOnInheritedWidgetOfExactType(aspect: IDataProvider);
  }
}
