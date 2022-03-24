import 'package:flutter/material.dart';
import 'package:jinnian_cms_flutter/constants/color_constant.dart';

class BottomNavigation extends StatefulWidget {
  var currentIndex;

  BottomNavigation({Key? key, required int this.currentIndex})
      : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  //当前选中的tab
  int _currentIndex = 0;

  List<Map<String, dynamic>> bottomNavigationConfig = [
    {"label": "探索", "icon": Icons.search_outlined, "route_name": '/'},
    {"label": "好物", "icon": Icons.shopping_cart, "route_name": '/'},
    {"label": "坦克", "icon": Icons.directions_car, "route_name": '/'},
    {"label": "服务", "icon": Icons.security, "route_name": '/'},
    {"label": "我的", "icon": Icons.person_outline, "route_name": '/'}
  ];

  List<BottomNavigationBarItem> bottomNavigationBarItems =
      <BottomNavigationBarItem>[
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.search_outlined,
          size: 24,
          color: Colors.grey,
        ),
        label: "探索"),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.shopping_cart,
          size: 24,
          color: Colors.grey,
        ),
        label: "好物"),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.directions_car,
        size: 24,
        color: Colors.grey,
      ),
      label: "坦克",
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.security,
        size: 24,
        color: Colors.grey,
      ),
      label: "服务",
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.person_outline,
        size: 24,
        color: Colors.grey,

      ),
      label: "我的",
    ),
  ];

  @override
  void initState() {
    _currentIndex = widget.currentIndex;
  }

  void handle_index_change(int index) {
    if (index != widget.currentIndex) {
      var nav_namee = "";

      print(index);

      switch (index) {
        case 0:
          Navigator.pushNamed(context, "/home");
          break;
        case 1:
          Navigator.pushNamed(context, "/shopping");
          break;
        case 2:
          Navigator.pushNamed(context, "/car");
          break;
        case 3:
          Navigator.pushNamed(context, "/service");
          break;
        case 4:
          Navigator.pushNamed(context, "/my");
          break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      items: bottomNavigationBarItems,

      selectedLabelStyle: TextStyle(color: ColorConstant.blue),
      unselectedLabelStyle: TextStyle(color: ColorConstant.grey),
        selectedItemColor: ColorConstant.blue,
      unselectedItemColor:  ColorConstant.grey,
        showUnselectedLabels:true,
      onTap: (int index) {
        handle_index_change(index);
      },
    );
  }
}
