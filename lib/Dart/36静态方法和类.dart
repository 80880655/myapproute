
void main(List<String> args) {
  

  // print(Person.name);

  // Person.show();

  Person p=new Person();

  p.printInfo();

  Person.show();


}


class Person{

  static String name='张三';
  int age=23;

  static void show(){
    print(name);
  }

  void printInfo(){
    print(name);

    print(this.age);
  }

}
