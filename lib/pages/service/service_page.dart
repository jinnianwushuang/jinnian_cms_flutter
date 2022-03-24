
import 'package:flutter/material.dart';
import 'package:jinnian_cms_flutter/navigator/bottom_navigation.dart';

/**
 *
 * 服务页面
 */
class ServicePage extends StatelessWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Text("服务页面"),
      bottomNavigationBar: BottomNavigation(currentIndex: 3,),
    );
  }
}
