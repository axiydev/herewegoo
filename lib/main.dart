import 'package:flutter/material.dart';
import 'package:herewegoo/pages/home_page.dart';
import 'package:herewegoo/pages/signin_page.dart';
import 'package:herewegoo/pages/signup_page.dart';
import 'package:herewegoo/theme.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: basicTheme(context),
      home: SignIn(),
      routes:{
        HomePage.id:(context)=>HomePage(),
        SignIn.id:(context)=>SignIn(),
        SignUp.id:(context)=>SignUp(),
      },
    );
  }
}

