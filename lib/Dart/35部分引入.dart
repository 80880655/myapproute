// 部分引入 show
// import 'lib/myMath.dart' show getName;

// 隐藏
// import 'lib/myMath.dart' hide getName;

// import 'package:myapp/Rect/myMath.dart' hide getName;

import 'package:myapproute/Rect/myMath.dart' hide getName;

void main() {
  // 时间：2020/5/14 17:28
  // 只是引入了一部分的方法 getName， 用关键字 show 就可以了。

  //1、 show
  // getName();

  // getAge();

  // getSex();

  // 2、hide
  // getName();  // getName 无法使用，因为上面使用了 hide 隐藏
  getAge();

  // 3、export  part
}
