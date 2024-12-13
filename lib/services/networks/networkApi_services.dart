//
// import 'dart:convert';
// import 'dart:io';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:http/http.dart' as http;
// import 'package:practice/Utils/erorhandling/Exacetionhandling.dart';
// import 'package:practice/services/networks/base_network.dart';
//
// final networkServices = Provider((ref)=>NetworkApiServices());
//
// class NetworkApiServices extends BaseNetworkServices{
//   var client = http.Client();
//   @override
//   Future<dynamic> getApi(String url) async{
//     var responseJson ;
//     try
//     {
//       var response = await http.get(Uri.parse(url)).timeout(
//         const Duration(seconds: 10),);
//       responseJson = responseJson(response);
//     } on SocketException{
//       InternetException('');
//     }on RequestTimeOut {
//       throw RequestTimeOut('');
//     } catch(e){
//       throw UnknownError(e.toString());
//     }
//   }
//
//   @override
//    Future postApi(data, String url) async {
//     var responseJson ;
//     try
//     {
//       var response = await http.post(Uri.parse(url) , body: jsonDecode(data)).timeout(
//           const Duration(seconds: 10),);
//       responseJson = responseJson(response);
//     } on SocketException{
//       InternetException('');
//     }on RequestTimeOut {
//       throw RequestTimeOut('');
//     } catch(e) {
//       if (e is SocketException) {
//         throw InternetException('');
//       }
//       else {
//         print(e.toString());
//       }
//     }
//   }
//
//   Future<dynamic> deleteApi (dynamic data , String url)async{
//     var responseJson ;
//     try
//     {
//       var response = await http.delete(Uri.parse(url) , body: jsonDecode(data)).timeout(
//         const Duration(seconds: 10),);
//       responseJson = responseJson(response);
//     } on SocketException{
//       InternetException('');
//     }on RequestTimeOut {
//       throw RequestTimeOut('');
//     } catch(e){
//       throw UnknownError(e.toString());
//     }
//   }
//
//   dynamic returnResponse(http.Response response){
//
//     switch(response.statusCode){
//
//       case 200 :{
//         dynamic responseJson = jsonDecode(response.body);
//         return responseJson;
//       }
//       case 401 :{
//         throw InvalidUrl();
//       }
//       case 500 :{
//         throw ServerError();
//       }
//
//       default : {
//         throw UnknownError("");
//       }
//     }
//
//   }
//
// }