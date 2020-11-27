
abstract class Animal{
  eat();  // 抽象方法
  run();  // 抽象方法
  printInfo(){
    print('抽象方法的普通方法！');
  }
}

class Dog extends Animal{
  //抽象方法 继承的子类必须实现
  @override
  eat() {
    // TODO: implement eat
    print('Dog来的eat方法');
  }

  //抽象方法 继承的子类必须实现
  @override
  run() {
    // TODO: implement run
    print('Dog来的run方法');
  }

  //非抽象方法，可实现可以不实现
  @override
  printInfo() {
    // TODO: implement printInfo
    // return super.printInfo();

    print('Dog 方法的普通方法');
  }
  
}

void main(List<String> args) {
  // 时间：2020/5/15 10:26分
  // 1、Dog 类继承并实现了 Animal 抽象类
  Dog d=new Dog();
  d.printInfo();
  d.run();
  d.eat();
  d.printInfo();


}


















