import 'package:flutter/material.dart';
import 'package:jinnian_cms_flutter/widget/action_button.dart';
import 'package:jinnian_cms_flutter/widget/labeled_input.dart';

import '../widget/small_logo.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:   const Text("忘记密码"),
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



  @override
  Widget build(BuildContext context) {

    List<Widget> listViewChildren = <Widget>[


      LabeledInput(label: "新密码", hintText: "请输入新密码"),
      LabeledInput(label: "确认新密码", hintText: "请再次输入新密码"),
      LabeledInput(label: "短信验证码", hintText: "请输入验证码"),


      ActionButton(
        label: "确认",
        bgcolor: ActionButtonColor.blue,
      ),


      SizedBox(
        height: 30,
      ),
    ];

    return Container(
      color: Color.fromRGBO(246, 246, 246, 1),
      child: ListView(
        children: listViewChildren,
      ),
    );
  }
}
