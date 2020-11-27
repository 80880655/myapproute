void main() {
  // 时间：2020/5/13 16:27分 类 和 对象
  
  Person p=new Person();  // 错误，这是C# 的 实例化方法1

  // Dart 实例化方法2
  // var p=new Person();


  p;
  p.printInfo();
  

  p.setInfo(123);

}


// 1、类必须使用 class 来声明，并且一定是在 main 函数的外面。
// 2、定义class 类名的时候，首字母 一定是 大写。
class Person{
  String name="张三";
  int age=24;

  // 默认构造函数,可以是设置传入参数的构造函数，函数实例化就出来。
  Person(){
    print('构造函数');
  }

  // 直接使用 $name 获取属性
  void printInfo(){
    // print("姓名：$name--------------性别：$age");
    print("this 方法：${this.name}----${this.age}");
  }

  void setInfo(int age){
    print(this.age=age);
    // this.age=age;
  }


}


