import 'package:flutter/material.dart';

class IGenericDataProvider<T> extends InheritedWidget {
  final T data;

  IGenericDataProvider({Key key, Widget child, this.data})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(IGenericDataProvider oldWidget) {
    return data != oldWidget.data;
  }

  static T of<T>(BuildContext context) {
    // 旧方法 inheritFromWidgetOfExactType ； 使用 dependOnInheritedWidgetOfExactType 代替,结果报错；
    // 这里还是使用  inheritFromWidgetOfExactType 方法

    // ignore: deprecated_member_use
    return (context.inheritFromWidgetOfExactType(
            IGenericDataProvider<T>().runtimeType) as IGenericDataProvider<T>)
        .data;

    // return (context.dependOnInheritedWidgetOfExactType(
    //             aspect: IGenericDataProvider<T>().runtimeType)
    //         as IGenericDataProvider<T>)
    //     .data;
  }
}
