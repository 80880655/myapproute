void main() {
  // 2020/5/13  自定义函数
  //1、自定义函数、方法
  // printInfo();

  // //2、嵌套函数方法, 注意上下文
  // int getNum(){
  //   var myNum=123;

  //   return myNum;
  // }

  // print(getNum());

  //3、返回无指定类型的方法
  //3、返回无指定类型的方法
  getInt() {
    return 123;
  }

  print(getInt());    // 返回 123


}

//1、自定义函数、方法
void printInfo() {
  print('自定义方法');
}
