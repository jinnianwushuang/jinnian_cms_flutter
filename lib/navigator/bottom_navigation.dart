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
   const BottomNavigationBarItem(
     icon: Icon(
       Icons.favorite,
       color: Colors.pink,
       size: 24.0,
       semanticLabel: 'Text to announce in accessibility modes',
     ),
     label: "收藏"
   ),
   const BottomNavigationBarItem(
       icon: Icon(
         Icons.people_alt,
         color: Colors.pink,
         size: 24.0,
         semanticLabel: 'Text to announce in accessibility modes',
       ),
       label: "用户"
   ),
   const BottomNavigationBarItem(
       icon: Icon(
         Icons.perm_identity,
         color: Colors.pink,
         size: 24.0,
         semanticLabel: 'Text to announce in accessibility modes',
       ),
       label: "我的",

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
       }else{
         Navigator.pushNamed(context, "/my");
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
