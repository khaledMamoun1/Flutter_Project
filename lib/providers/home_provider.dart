import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
 import '../model/product_model.dart';


class HomeProvider with ChangeNotifier{
  HomeModel? data;
  String? token;
  Future<dynamic>getAllData()async{
    var dio=Dio();
    dio.options.headers={
      "lang":"en",
      "Content-Type":"application/json",
      "Authorization":token,

    };
    
    
   final response= await dio.get("https://student.valuxapps.com/api/home");
   // print("res "+response.data['data']["products"].toString());
  
    data=HomeModel.fromJson(response.data);
    notifyListeners();
  }
}





















// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:scaffold_widget/model/product_model.dart';

// class HomeProvider with ChangeNotifier{
//   // List<Products> products=[];0
//   // Products? product;
//   HomeModel? data;
//    Map<String, dynamic>? dioHeaders;
//    String?token; 
//    Future<dynamic> getAllData()async{
//     var dio=Dio();
//     dio.options.headers={

//       "lang":"ar",
//       "Content-Type":"application/json",
//        "Authorization":token

//     };
//     final response=await dio.get("https://student.valuxapps.com/api/home", );
//       data=HomeModel.fromJson(response.data);
//       notifyListeners();
//     // dynamic allData=response.data;
//     // print("all"+allData.toString());
//     // data=Data.fromJson(allData["data"]);
//     //if(allData['status']==true){
     
//     //  product=Products.fromJson(allData['data']['products']);
//       // notifyListeners();
//     // }else{
//     //   return "not success";
//     // }


//    }
   

// }