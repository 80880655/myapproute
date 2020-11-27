class PrintClass {
  List list = new List<int>();

  void add(int value) {
    this.list.add(value);
  }

  void printInfo() {
    for (var i = 0; i < this.list.length; i++) {
      print(this.list[i]);
    }
  }
}

// 时间：2020/5/15 17:33
// 创建泛型类
class PrintClass2<T> {
  List list = new List<T>();

  void add(T value) {
    this.list.add(value);
  }

  void printInfo() {
    for (var i = 0; i < this.list.length; i++) {
      print(this.list[i]);
    }
  }
}

void main() {
  // 1、指定一个类型的 List
  // List list=new List<String>();
  // // list.add(333);  // 错误的写法，因为上面指定了 String 类型
  // list.add('张三');
  // print(list);    // 返回 [张三]
  PrintClass printClass = new PrintClass();
  printClass.add(123);
  printClass.add(13);
  printClass.add(14);
  printClass.printInfo();

  // 2、泛型方法：
  PrintClass2 p2 = new PrintClass2();
  p2.add('value1');
  p2.add('value2');
  p2.add(123.0);
  p2.add(10000);
  p2.add(222000);
  p2.printInfo();

  // 3、自定义 泛型类; 这样所有的类型都被指定为 String 类型；
  PrintClass2 p3=new PrintClass2<String>();
  p3.add('-------------------------------------');
  p3.add('这样所有的类型都被指定为 String 类型；01');
  p3.add('这样所有的类型都被指定为 String 类型；02');
  p3.add('这样所有的类型都被指定为 String 类型；03');
  p3.printInfo();


}
