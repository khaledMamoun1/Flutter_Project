import 'package:dio/dio.dart';
import 'package:flutter/material.dart';


import '../model/Login_Model.dart';

class LoginProvider with ChangeNotifier{
  LoginModel? loginModel;
  Map<String,dynamic>? data;
  Future<dynamic>login({

    String?email,
    String?password,

  })async{
    var dio=Dio();
    dio.options.headers={
      "lang":"ar",
      "Content-Type":"application/json"
    };
    data={

      "email":email,
      "password":password,

    };
    notifyListeners();
    final response=await dio.post("https://student.valuxapps.com/api/login",
      data: data,
    );
    // print("data register "+response.data.toString());
    loginModel=LoginModel.fromJson(response.data);

  }
}



















// class RegisterProvider with ChangeNotifier{
//  RegisterModel? registerModel;
//   String? token;
//     Map<String,dynamic>? data;
//   Future<dynamic>register({
//     String? name,
//     String? phone,
//     String? email,
//     String? password,

//   })async{
//     var dio=Dio();
//     dio.options.headers={
//       "lang":"en",
//       "Content-Type":"application/json",
//       "Authorization":token,

//     };
//     data={
//       "name":name,
//       "phone":phone,
//       "email":email,
//       "password":password
//     };
//     notifyListeners();



//    final response= await dio.post("https://student.valuxapps.com/api/register",data: data);
//    print("res"+response.data["message"]);
//     registerModel=RegisterModel.fromJson(response.data);
//     notifyListeners();
//   }

// }



















