
import 'package:flutter/material.dart';

import '../../navigator/bottom_navigation.dart';

/**
 * 首页页面
 */
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("首页页面"),
      bottomNavigationBar: BottomNavigation(currentIndex: 0,),
    );
  }
}
