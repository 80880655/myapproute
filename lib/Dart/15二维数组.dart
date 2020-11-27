void main() {
  // 二维数组

  List list = [
    {
      "cate": "国内",
      "new": [
        {"title": "国内新闻1"},
        {"title": "国内新闻2"},
        {"title": "国内新闻3"},
      ]
    },
    {
      "cate": "国际",
      "new": [
        {"title": "国际新闻4"},
        {"title": "国际新闻5"},
        {"title": "国际新闻6"},
      ]
    },
  ];


  for (var i = 0; i < list.length; i++) {
    
    print(list[i]['cate']);
    print('----------------------------');

    for (var j = 0; j < list[i]['new'].length; j++) {
      print('   '+list[i]['new'][j]['title']);
    }

  }





}
