

// Future<List<ProdDataList>> getData(String sqlName) async {
//   var http = HttpHelper();
//   var response = await Future.wait([
//     http.get("/v1/Test/GetProdData", queryParameters: {"sqlName": sqlName}),
//   ]).catchError((e) {
//     var err = HttpErrorParser(e);
//     throw new Exception(err.message);
//   }, test: (_) => true);

//   if (response == null) return null;

//   var message = [];
//   if (response[0].data.code != 0) message.add(response[0].data.message);
//   if (message.length > 0) {
//     throw new Exception(message.join("\n"));
//   }

//   print("=== ${response[0].data.data}");

//   try {
//     List<ProdDataList> data = response[0].data.data == null
//         ? []
//         : (response[0].data.data as List)
//             .map((item) => ProdDataList.fromJson(item))
//             .toList();

//     print('data333:${data[1].list}');

//     return data;
//   } on Exception catch (e) {
//     print(e.toString());
//     print(response[0].data.data);
//     throw Exception("服务器返回了错误的数据。");
//   }
// }
