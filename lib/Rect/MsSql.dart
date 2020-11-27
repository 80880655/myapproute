import 'DB.dart';

class MsSql implements DB {
  @override
  String uri='----------MsSql 的链接字符串！！！';

  @override
  add() {
    // TODO: implement add

    print('XXXX MsSql add方法');
  }

  @override
  del() {
    // TODO: implement del

    print('XXXX MsSql del 方法');
  }

  @override
  save() {
    // TODO: implement save
    print('XXXX MsSql save 方法');
  }

  run() {
    print('XXXX MsSql run 方法!!!!!');
  }

  @override
  void printDB() {
    // TODO: implement printDB
  }


}
