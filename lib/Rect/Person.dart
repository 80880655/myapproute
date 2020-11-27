class Person {

  String name="XX";
  int age=10;
  String _sex="男";

  Person(this.name,this.age);
  Person.now(){
    print('命名构造函数的方法');
  }

  Person.setInfo(String name,int age,String sex){
    this.name=name;
    this.age=age;
    this._sex=sex;

    print("命名方法2：${this.name}----${this.age}----${this._sex}");

  }

  void printInfo(){
    print("this 方法：${this.name}----${this.age}");
  }

}


