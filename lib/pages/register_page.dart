import 'package:flutter/material.dart';
import 'package:jinnian_cms_flutter/widget/action_button.dart';
import 'package:jinnian_cms_flutter/widget/labeled_input.dart';

import '../widget/small_logo.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:   const Text("注册账号"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: _MainView(),
      ),
    );
  }
}

/**
 *
 * 主体结构区域
 */
class _MainView extends StatelessWidget {
  _MainView({Key? key}) : super(key: key);

  List<Widget> listViewChildren = <Widget>[


    LabeledInput(label: "账号", hintText: "请输入账号"),
    LabeledInput(label: "密码", hintText: "请输入密码"),
    LabeledInput(label: "确认密码", hintText: "请再次输入密码"),
    LabeledInput(label: "注册码", hintText: "请输入注册码"),
    LabeledInput(label: "手机号", hintText: "请输入手机号码"),
    LabeledInput(label: "短信验证码", hintText: "请输入验证码"),
    SizedBox(
      height: 20,
    ),
    ActionButton(
      label: "注册",
      bgcolor: ActionButtonColor.blue,
    ),

    SizedBox(
      height: 30,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(246, 246, 246, 1),
      child: ListView(
        children: listViewChildren,
      ),
    );
  }
}
