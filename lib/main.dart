
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'auth/Login.dart';
import './providers/CategoryProvider.dart';
import './providers/home_provider.dart';
import './providers/register_provider.dart';


void main() => runApp(const MyApp());

class  MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>MultiProvider (
    providers: [
      ChangeNotifierProvider(
          create: (context)=>CategoryProvider()),
      ChangeNotifierProvider(
          create: (context)=>HomeProvider()),
      ChangeNotifierProvider(
          create: (context)=>RegisterProvider()),
    ],
    child:  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),

    )
  );
  }

