import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jinnian_cms_flutter/navigator/bottom_navigation.dart';
import 'dart:math' as math;

/**
 * 坦克 车辆 购买主入口页面
 */
class CarPage extends StatelessWidget {
  const CarPage({Key? key}) : super(key: key);

  /**
   * 计算生产单个 轮播图
   */
  compute_carouselSlider_item(
      BuildContext context, Map<String, dynamic> config) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 30, bottom: 30, right: 20, left: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "坦克300",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w900),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("无路 闯出路",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                        )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("指导价",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        )),
                    Text(
                      "19.58万起",
                      style: TextStyle(
                          color: Colors.amber,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("尊享豪华",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700)),
                        Text(
                          "航空档杆",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("智享科技",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700)),
                        Text(
                          "坦克互联",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("纵享越野",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700)),
                        Text(
                          "坦克转弯",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 2,
                      width: 30,
                      child: Container(
                        margin: EdgeInsets.only(right: 5),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                      width: 30,
                      child: Container(
                        margin: EdgeInsets.only(right: 2),
                        color: Colors.black54,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 2 - 50,
                      child: Center(
                        child: Text("预约试驾",
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 16,
                                fontWeight: FontWeight.w700)),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          border: Border.all(
                              color: Colors.amber,
                              width: 2,
                              style: BorderStyle.solid)),
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 2 - 30,
                      child: Center(
                        child: Text("立即订购",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700)),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          border: Border.all(
                              color: Colors.amber,
                              width: 2,
                              style: BorderStyle.solid),
                        color: Colors.amber,
                      ),

                    ),
                  ],
                ),
                SizedBox(
                  height: 70,
                )
              ],
            ),
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
            // image:AssetImage("assets/images/tanke/descript01-m.jpg"),
            fit: BoxFit.cover,
            image: AssetImage(config['image_src'] ?? ""),
          )),
        ));
  }

  /**
   * 轮播图区域
   */
  CarouselSlider compute_CarouselSlider_area(context) {
    var items = [
      Builder(
        builder: (BuildContext context) {
          return compute_carouselSlider_item(
              context, {"image_src": "assets/images/tanke/descript01-m.jpg"});
        },
      ),
      Builder(
        builder: (BuildContext context) {
          return compute_carouselSlider_item(
              context, {"image_src": "assets/images/tanke/tips2_1_m.jpg"});
        },
      ),
    ];

    return CarouselSlider(
      options: CarouselOptions(
          height: MediaQuery.of(context).size.height,
          viewportFraction: 1,
          aspectRatio: MediaQuery.of(context).size.aspectRatio),
      items: items,
    );
  }

  /**
   * 附近经销商
   */

  compute_bottom_card_area() {
    return Padding(
      padding: EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
      child: Column(
        children: <Widget>[
          Row(
            children: const [
              Text("附近经销商"),
              Spacer(),
              Text("更多"),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Card(
            elevation: 5,
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(15.0),
            // ),
            shape: const RoundedRectangleBorder(
              side: BorderSide(color: Colors.white70, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            // shape: StadiumBorder(
            //   side: BorderSide(
            //     color: Colors.black,
            //     width: 2.0,
            //   ),
            // ),
            child: Column(
              children: [
                Image.asset("assets/images/tanke/tk300-1.jpeg"),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  "北京易有为汽车销售服务涌现公司",
                                  style: TextStyle(fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  "北京市朝阳区黄广路黄广村399号",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                      Container(
                        width: 70,
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color.fromRGBO(230, 230, 230, 1),
                              child: Transform.rotate(
                                angle: -math.pi / 6,
                                child: const Icon(
                                  Icons.send,
                                  size: 20,
                                ),
                              ),
                            ),
                            Text("14.03km")
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          compute_CarouselSlider_area(context),
          compute_bottom_card_area()
        ],
      ),
      bottomNavigationBar: BottomNavigation(
        currentIndex: 2,
      ),
    );
  }
}
