import 'package:flutter/material.dart';
import 'package:jinnian_cms_flutter/pages/car/car_page.dart';
import 'package:jinnian_cms_flutter/pages/favorite_page.dart';
import 'package:jinnian_cms_flutter/pages/forgot_password_page.dart';
import 'package:jinnian_cms_flutter/pages/home/home_page.dart';
import 'package:jinnian_cms_flutter/pages/login_page.dart';
import 'package:jinnian_cms_flutter/pages/my/my_page.dart';
import 'package:jinnian_cms_flutter/pages/register_page.dart';
import 'package:jinnian_cms_flutter/pages/service/service_page.dart';
import 'package:jinnian_cms_flutter/pages/shop/shopping_page.dart';
import 'package:jinnian_cms_flutter/pages/user_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: UserPage(),
      home: LoginPage(),
      routes: <String, WidgetBuilder>{
        //收藏
        "/favorite": (BuildContext context) => FavoritePage(),
        //注册
        "/register": (BuildContext context) => RegisterPage(),
        // 首页  探索
        "/home": (BuildContext context) => HomePage(),
        //好物
        "/shopping": (BuildContext context) => ShoppingPage(),
        //坦克
        "/car": (BuildContext context) => CarPage(),
        //服务
        "/service": (BuildContext context) => ServicePage(),
        // 我的
        "/my": (BuildContext context) => MyPage(),
        //忘记密码
        "/forgot_password": (BuildContext context) => ForgotPasswordPage(),
        //登录
        // "/login":(BuildContext context)=>LoginPage(),
        "/user": (BuildContext context) => UserPage(),
      },
    );
  }
}
