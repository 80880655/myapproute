class Person {
  String name;
  num age;
  Person(this.name, this.age);
  Person.xxx(this.name, this.age);


  void printInfo() {
    print("${this.name}----${this.age}");
  }

  void test(){
    print('test,父类的方法！');
  }


}

class Web extends Person {
  Web.xxx(String name, num age) : super.xxx(name, age);

  Web(String name, num age) : super(name, age);


  // 重写，可以写，可以不写，建议写上
  @override
  void printInfo() {
    print("姓名：${this.name}----年龄：${this.age}");

    // 使用super 直接调用父类的方法或属性
    super.test();
  }
}

void main(List<String> args) {
  Web w = new Web('sss', 23);

  w.printInfo();

  Web.xxx('YYY', 55).printInfo();

  var p = new Web.xxx('name', 333);

  p.printInfo();
}
