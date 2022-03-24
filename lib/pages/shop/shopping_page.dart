import 'package:flutter/material.dart';
import 'package:jinnian_cms_flutter/navigator/bottom_navigation.dart';

/**
 * 好物页面
 */
class ShoppingPage extends StatefulWidget {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("好物页面"),
      bottomNavigationBar: BottomNavigation(currentIndex: 1,),
    );
  }
}
