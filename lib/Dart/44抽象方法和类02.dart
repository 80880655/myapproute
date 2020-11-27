// 时间：2020/5/15 10:54 分  多态

abstract class Animal {
  eat(); // 抽象方法
  printInfo() {
    print('抽象方法的普通方法！');
  }
}

class Dog extends Animal {
  @override
  eat() {
    print('小狗在吃骨头！');
  }
  // 多态
  run() {
    print('小狗在跑');
  }
}

class Cat extends Animal {
  @override
  eat() {
    print('小猫在吃老鼠！');
  }
  // 多态
  run() {
    print('小猫在跑');
  }
}

void main(List<String> args) {
  Dog d = new Dog();
  d.run();
  d.eat();

  // 多态
  Animal d1 = new Dog();
  d1.eat();

  // d1.run(); // 报错，d1 只能实现 Animal 的 抽象方法，无法实现 继承子类的自定义方法
  




}
