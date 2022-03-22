
import 'package:flutter/material.dart';
import 'package:jinnian_cms_flutter/pages/favorite_page.dart';
import 'package:jinnian_cms_flutter/pages/login_page.dart';
import 'package:jinnian_cms_flutter/pages/my_page.dart';
import 'package:jinnian_cms_flutter/pages/user_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       // home: UserPage(),
       home: LoginPage(),
      routes: <String,WidgetBuilder>{
         "/favorite":(BuildContext context)=>FavoritePage(),
         "/my":(BuildContext context)=>MyPage(),
         // "/login":(BuildContext context)=>LoginPage(),
         "/user":(BuildContext context)=> UserPage(),
      },

    );

  }
}
