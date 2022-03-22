import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:jinnian_cms_flutter/api/module/user_api.dart';
import 'package:jinnian_cms_flutter/model/index.dart';
import 'package:jinnian_cms_flutter/model/paginationWapper.dart';
import 'package:jinnian_cms_flutter/model/responseWapper.dart';
import 'package:jinnian_cms_flutter/navigator/bottom_navigation.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  List<User> userList = [];

  List<Widget> handle_children() {
    List<Widget> list = [];
    list = userList.map((User e) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 18),
            child: Text(e.name),
          ),
          Padding(
            padding: EdgeInsets.only(top: 18, left: 18),
            child: Text(e.age.toString()),
          ),
        ],
      );
    }).toList();
    return list;
  }

  /**
   *
   * 获取 API 数据 加工处理为 state 内数据
   */

  userAPi_handle_read() async {
    print("点击");
    var params = {
      "currentPage": 1,
      "pageSize": 10,
    };
    var userAPi = UserAPi();
    var response = await userAPi.handle_read(params);
    ResponseWapper responseWapper =
        ResponseWapper.fromJson(json.decode(response.toString()));
    Map<String, dynamic> paginationWapper_json =
        responseWapper.data as Map<String, dynamic>;
    PaginationWapper paginationWapper =
        PaginationWapper.fromJson(paginationWapper_json);
    var docs = paginationWapper.docs;
    print(docs.length);
    setState(() {
      userList = docs.map((e) {
        return User.fromJson(e as Map<String, dynamic>);
      }).toList();
    });
  }

  /**
   * 生成表格区域
   */

  Table handle_create_table_weiget() {
    List<TableRow> children = const <TableRow>[];

    children = userList.map((User e) {
      return TableRow(children: <Widget>[
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(e.name),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(e.age.toString()),
          ),
        ),
      ]);
    }).toList();

    return Table(
      border: TableBorder.all(
        color: Colors.grey,
        width: 1.0,
      ),
      children: [
        const TableRow(children: <Widget>[
          Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("名称"),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("年龄"),
            ),
          ),
        ]),
        ...children
      ],
    );
  }

  @override
  void didChangeDependencies() {}

  @override
  void dispose() {}

  @override
  void initState() {
    userAPi_handle_read();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("用户"),
      ),
      // drawer: (),

      body: handle_create_table_weiget(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(55, 55, 55, 6),
        onPressed: () {
          // Navigator.pushNamed(context, "/my");
          userAPi_handle_read();
        },
        child: Center(
          child: Text("点击"),
        ),
      ),
      bottomNavigationBar: BottomNavigation(
        currentIndex: 1,
      ),
    );
  }
}
