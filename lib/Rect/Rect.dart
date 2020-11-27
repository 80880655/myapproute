class Rect {
  num height;
  num width;

  // 1、构造函数，需要传入2个参数，但是没有进行初始化赋值
  // Rect(this.height, this.width);

  // 2、使用构造函数，初始化实例化变量; 这样就完成了初始化；
  // 发生在实例化类之前做的事情。
  Rect(): height = 10,width = 20 {}

  // get 和 set 方法

  // num area(){
  //   return this.height*this.width;
  // }

  get area {
    return "面积:${this.height * this.width}";
  }

  set areaHeight(value) {
    this.height = value;
  }

}
