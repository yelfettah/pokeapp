import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemonflutteer/constants/constants.dart';

import 'package:pokemonflutteer/pages/home_page.dart';
import 'package:flutter/painting.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return ScreenUtilInit(
      designSize: const Size(1179, 2556) ,
      builder: (context, child) => 
       MaterialApp(
        debugShowCheckedModeBanner: false,
        title: Constants.title,
        theme: ThemeData.dark().copyWith(
        ),
        home: const HomePage(),
      ),
    );
  }
}

