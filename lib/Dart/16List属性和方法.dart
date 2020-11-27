void main() {

  // 1、List 常见的属性
  // List myList = ["香蕉",'苹果','西瓜'];

  // print(myList.length);

  // print(myList.isEmpty);  // 返回 false

  // print(myList.isNotEmpty);   // 返回 true

  // print(myList.reversed);   // 翻转数组 

  // var newMyList=myList.reversed.toList();   // 将(西瓜, 苹果, 香蕉) 转换成 [西瓜, 苹果, 香蕉]

  // print(newMyList);


  // 2、常见List的方法：
  // List myList = ["香蕉",'苹果','西瓜'];
  // // 增加一个
  // myList.add('桃子');

  // //增加多个，拼接数组
  // myList.addAll(['葡萄','哈密瓜']);   //[香蕉, 苹果, 西瓜, 桃子, 葡萄, 哈密瓜]

  // // 获取索引
  // print(myList);
  // print(myList.indexOf('西瓜'));  // 输出结果，得到索引 2
  
  // print(myList.indexOf('西XXX瓜'));   //查不到，返回 -1


  // 3、Remove 删除
  // List myList = ["香蕉",'苹果','西瓜'];

  // myList.remove('西瓜');

  // print(myList);


  // 4. fillRange 修改
  // List myList = ["香蕉",'苹果','西瓜'];
  // // 修改一项
  // myList.fillRange(1, 2,'AAA');

  // // 修改多项
  // myList.fillRange(1, 3,'BBB');


  // 5.insert  和  insertAll   //插入 一个  或  多个 
  // List myList = ["香蕉",'苹果','西瓜'];
  // myList.insert(1, 'AAA');

  // myList.insertAll(1, ['aaa','bbb']);

  // print(myList);

  // 6.join
  // List myList = ["香蕉",'苹果','西瓜'];
  // var newList=myList.join('-');
  // print(newList);

  // 7.split 方法, 拆分成数组
  // var str='香蕉-苹果-西瓜';

  // var list=str.split('-');

  // print(list);

  // print(list is List);




  //8、where 的使用
  // List myList = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  // var newList = myList.where((value) {
  //   return value > 5;
  // });
  // print(newList);   // 返回：(6, 7, 8, 9)




  // 9、any 方法的使用
  // List myList = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  // var f=myList.any((value){
  //   return value>5;
  // });

  // print(f);  // 返回true



  // 10、every   每一都需要满足条件，返回true, 否则返回 false.
  // List myList = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  // var f=myList.every(
  //   // (value){
  //   //   return value>5;
  //   // }

  //   (e){
  //     return e>5;
  //   }
  // );

  // print(f);  // 返回 false


  // 11、箭头函数  =>

  // 用Set 主要是去重的效果。
  var s=new Set();

  s.addAll([1,222,333,44]);

  // 注意，在Dart语法中如果只有一行代码，则可以使用 【箭头函数】，箭头函数中结尾不需要使用 “分号”。
  s.forEach(
    (value)=> print(value)
  );

  s.map(

    (value){
      print('00000'+value.toString());
    }

  ).toList();





}
