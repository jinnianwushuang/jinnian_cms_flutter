
import 'package:flutter/material.dart';
import 'package:jinnian_cms_flutter/navigator/bottom_navigation.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);









  /**
   * 头部区域
   */
  Widget _build_top(){
    


    return  Container(
      child: Column(
        children: [
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [ Icon(
              Icons.settings,
              size: 20,
              color: Colors.black,
            )],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [ 
              CircleAvatar(
                backgroundColor: Colors.brown.shade800,
                child: Text("6"),


              ),
              SizedBox(width: 20,),
              Text("登录/注册")
              ],
          ),
          SizedBox(height: 20,),
          Container(

            decoration:  BoxDecoration(
              color: Colors.black38,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10)
              )
            ),
            child: Padding(
              padding: EdgeInsets.all(10),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("我的勋章",style: TextStyle(color: Colors.white),),
                  Spacer(),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all( Colors.amber),


                      ),
                      onPressed: (){},
                      child:Container(
                        child: Text("登录注册"),
                      )

                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }


 void  _listview_item_base_onTapFn(BuildContext context, String routeName){


    Navigator.pushNamed(context, routeName);
  }

  /**
   * 单个列表项
   */
  Widget  _listview_item( {
    required  BuildContext context,
    required  IconData    icon,
    required   String text,


      required Function onTapFn,
        String routerName = '/',
}){
    return  Padding(
      padding: EdgeInsets.only(top: 15,bottom: 15,right: 10,left: 10),
      child: GestureDetector(
        onTap: (){
          // onTapFn();
          _listview_item_base_onTapFn(context,routerName);
        },

        child: Row(
          children: [
            Icon(icon),
            SizedBox(width: 5,),
            Text(text),
            Spacer(),
            Icon(Icons.keyboard_arrow_right),
          ],
        ),
      )  ,
    );
  }

  /**
   * 下面滚动区域
   */
  Widget _build_main(context){

    return Container(
      height: MediaQuery.of(context).size.height - 280,
      child: ListView(
        children: [
          _listview_item(
            context: context,
            icon:Icons.car_rental,
            text: "车辆管理",
              onTapFn:(){
              print("车辆管理");
              },

          ),
          _listview_item(
              context: context,
              icon:Icons.money,
              text: "坦克币",
              onTapFn:(){
                print("坦克币");
              }
          ),
          _listview_item(
              context: context,
              icon:Icons.notification_important,
              text: "消息中心",
              onTapFn:(){
                print("消息中心");
              }
          ),
          _listview_item(
              context: context,
              icon:Icons.list,
              text: "我的订单",
              onTapFn:(){
                print("我的订单");
              }
          ),
          _listview_item(
              context: context,

              icon:Icons.favorite_border,
              text: "我的收藏",
              onTapFn:(){
                print("我的收藏");
              }
          ),
          _listview_item(
              context: context,
              icon:Icons.payments_outlined,
              text: "优惠券",
              onTapFn:(){
                print("优惠券");
              }
          ),
          _listview_item(
              context: context,
              icon:Icons.border_color,
              text: "意见反馈",
              onTapFn:(){
                print("意见反馈");
              }
          ),
          _listview_item(
              context: context,
              icon:Icons.people,
              text: "邀请好友",
              onTapFn:(){
                print("邀请好友");
              }
          ),
          Padding(
            padding: EdgeInsets.only(top: 15,bottom: 35,right: 10,left: 10),
            child: GestureDetector(
              onTap: (){
                print("列表项点击");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text("联系我们：400-666-6688"),

                ],
              ),
            )  ,
          )

        ],
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: Padding(
         padding: EdgeInsets.only(top: 30,left: 20,right: 20,bottom: 0),
         child: Column(
           children: [
             _build_top(),
             _build_main(context)
           ],
         ),
       ),



bottomNavigationBar: BottomNavigation(
currentIndex: 4,
),
);;
  }
}
