


import 'package:flutter/material.dart';
import 'package:jinnian_cms_flutter/navigator/bottom_navigation.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const SizedBox(
          // height: 50,
          child: Text("收藏"),
        ),
      ),
      body:  Padding(
        padding: EdgeInsets.only(left: 10,right: 10),
        child: Column(
          children: [
            Row(
                children:[
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.asset('assets/images/k_icon.png'),
                  ),
                ]
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(currentIndex: 0,),
    );
  }
}
