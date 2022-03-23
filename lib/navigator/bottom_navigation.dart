import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  var currentIndex;

  BottomNavigation({Key? key,required int this.currentIndex  }) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  //当前选中的tab
  int _currentIndex = 0;

 List<BottomNavigationBarItem> bottomNavigationBarItems =<BottomNavigationBarItem>[
   BottomNavigationBarItem(
     icon:  Image.asset('assets/images/icons/shouye.png',width: 22,height: 22,),

     label: "首页"
   ),
   BottomNavigationBarItem(
       icon:  Image.asset('assets/images/icons/jiaoyi.png',width: 22,height: 22,),
       label: "交易"
   ),
   BottomNavigationBarItem(
     icon:  Image.asset('assets/images/icons/wode-active.png',width: 22,height: 22,),
       label: "我的",

   ),
   BottomNavigationBarItem(
     icon:  Image.asset('assets/images/icons/wode-active.png',width: 22,height: 22,),
     label: "登陆",

   ),
 ];


  @override
  void initState() {
    _currentIndex = widget.currentIndex;
  }

  void handle_index_change(int index) {
   if(index != widget.currentIndex ){

     setState(() {
       print(index);
       if(index ==0){
         Navigator.pushNamed(context, "/favorite");
       }else if(index == 1){
         Navigator.pushNamed(context, "/user");
       }else if(index == 2){
         Navigator.pushNamed(context, "/my");
       }else if(index == 3){
         Navigator.pushNamed(context, "/");
       }

     });
   }


  }






  @override
  Widget build(BuildContext context) {

    return BottomNavigationBar(
      currentIndex:_currentIndex,
        items: bottomNavigationBarItems,
      onTap: (int index){
        handle_index_change(index);
      },
    );
  }

}
