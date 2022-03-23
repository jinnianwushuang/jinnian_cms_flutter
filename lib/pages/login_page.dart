import 'package:flutter/material.dart';
import 'package:jinnian_cms_flutter/widget/action_button.dart';
import 'package:jinnian_cms_flutter/widget/labeled_input.dart';

import '../widget/small_logo.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      SizedBox(
        height: 20,
      ),
      SmallLogo(),
      SizedBox(
        height: 20,
      ),
      LabeledInput(label: "账号", hintText: "请输入账号"),
      LabeledInput(label: "密码", hintText: "请输入密码"),
      LabeledInput(label: "验证码", hintText: "请输入验证码"),
      _ForgotPasswordButton(),

      ActionButton(
        label: "登录",
        bgcolor: ActionButtonColor.blue,
      ),

      ActionButton(
          label: "注册账号",
          bgcolor: ActionButtonColor.white,
          onTapFn:(){
            Navigator.pushNamed(context, "/register");
          }
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

/**
 * 忘记密码
 */
class _ForgotPasswordButton extends StatelessWidget {
  const _ForgotPasswordButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 26, right: 26, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {


              Navigator.pushNamed(context, "/forgot_password");
              // Navigator.pushNamed(context, "/register");
            },
            child: Text(
              "忘记密码？",
              style: TextStyle(
                  color: Color.fromRGBO(250, 100, 0, 1), fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
