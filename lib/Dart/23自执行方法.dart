void main() {
  // 时间：2020/5/13 16:14分

  print('顺序1');

  //1、自执行方法：
  (() {
    print('自执行方法！');
  })();


  ((int n) {
    print(n);
    print('自执行方法2！');
  })(12);

  print('顺序2');
}


