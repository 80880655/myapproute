void main(List<String> args) {
  //1、 问号
  // Person p;
  // p?.printInfo(); //如果 p不为空就输出，如果为空就不输出。

  // Person p2 = new Person('name', 30);

  // p2?.printInfo();

  // //2、 is 转换符
  // Person p = new Person('张三', 30);

  // if (p is Person) {
  //   p.name='李四';
  //   p.printInfo();
  // }

  // // 所有的都继承了Object对象
  // print(p is Object);   // 返回true

  // //3、AS的用法
  // var p1,p2;
  // p1='';

  // p2=null;

  // p1=new Person('name', 44);

  // // (p2 as Person).printInfo(); // 报错

  // // Person p3;
  // // (p3 as Person).printInfo();  // 报错

  // 4、级联..  的写法
  Person p = new Person('张三', 30);

  p.printInfo();

  // 以前的写法：
  p.name = '李四';
  p.age = 55;
  p.printInfo();

  // 【重点】使用级联的操作：
  p
    ..name = '王五'
    ..age = 66
    ..printInfo();



}

class Person {
  String name;
  num age;
  Person(this.name, this.age);
  void printInfo() {
    print("${this.name}----${this.age}");
  }
}
