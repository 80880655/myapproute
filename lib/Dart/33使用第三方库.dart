// import 'dart:convert' as convert;
// import 'package:http/http.dart' as http;

// void main() async {

//   // 时间：2020/5/14 14:58  代码是全部拷贝 https://pub.dev/packages/http#-example-tab- 中的 例子


//   // This example uses the Google Books API to search for books about http.
//   // https://developers.google.com/books/docs/overview



//   // 1、示例01
//   // var url = 'https://www.googleapis.com/books/v1/volumes?q={http}';

//   // // Await the http get response, then decode the json-formatted response.
//   // var response = await http.get(url);
//   // if (response.statusCode == 200) {
//   //   var jsonResponse = convert.jsonDecode(response.body);
//   //   var itemCount = jsonResponse['totalItems'];
//   //   print('Number of books about http: $itemCount.');
//   // } else {
//   //   print('Request failed with status: ${response.statusCode}.');
//   // }



//   // 示例02
//   var url = 'http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=1';

//   var respone=await http.get(url);
//   if (respone.statusCode==200) {
//     var jsonResponse=convert.jsonDecode(respone.body);

//     print(jsonResponse);
//   }else {
//     print('Request failed with status:${respone.statusCode}');
//   }



// }


