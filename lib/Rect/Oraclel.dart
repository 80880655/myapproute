import 'DB.dart';

class Oracle extends DB {
  // 时间：2020/5/15 15:39 使用 extends 来继承,

  //  抽象类的属性 url 可以实现也可以不实现

  @override
  String uri = 'Oracle 的链接字符串！';

  @override
  add() {
    print('Oracle 的 add方法');
  }

  @override
  del() {
    // TODO: implement del
    print('Oracle 的 del 方法');
  }

  @override
  save() {
    // TODO: implement save
    print('Oracle 的 save 方法');
  }

  // 使用extends 继承，可以使用 super 调用 父类的 方法
  work() {
    super.printDB();
  }
}
