
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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

   List<Widget> listViewChildren =<Widget> [
     _SmallLogo(),

     _UsernameInput(),
     SizedBox(height: 20,),
     _PasswordInput(),
     SizedBox(height: 20,),
     _LoginButton()


   ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Align(
          alignment: Alignment.center,
          child: ListView(
            restorationId: "login",
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 24),
            children: listViewChildren,

          ),
        ))
      ],
    );
  }
}

/**
 * logo 区域
 */

class _SmallLogo extends StatelessWidget {
  const _SmallLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(vertical: 20),
    child: SizedBox(
      width: 100,
      height: 100,
      child:  Image.asset('assets/images/k_icon.png'),
    ),
    );
  }
}

/**
 * 用户名字
 */

class _UsernameInput extends StatelessWidget {
  const _UsernameInput({Key? key, this.maxWidth = double.infinity }) : super(key: key);

 final double maxWidth;
  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.center,
      child: Container(
        constraints: BoxConstraints(maxWidth: maxWidth  ),
        child: const TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: "用户名",
            border: OutlineInputBorder()
          ),

        ),
      ),
    );
  }
}

/**
 * 用户密码
 */

class _PasswordInput extends StatelessWidget {
  const _PasswordInput({Key? key, this.maxWidth = double.infinity }) : super(key: key);
  final double maxWidth;
  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.center,
      child: Container(
        constraints: BoxConstraints(maxWidth: maxWidth  ),
        child: const TextField(
          obscureText: true,
          decoration: InputDecoration(
              labelText: "密码",
              border: OutlineInputBorder()
          ),

        ),
      ),
    );
  }
}

class _LoginButton extends StatefulWidget {
  const _LoginButton({Key? key}) : super(key: key);

  @override
  State<_LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<_LoginButton> {
  @override
  Widget build(BuildContext context) {
    return      OutlinedButton(
        onPressed: (){
          Navigator.pushNamed(context, "/user");
        },

        child: SizedBox(
          width: 200,
          height: 44,
          child: Center(
            child: Text("登录"),
          ),
        )
    );
  }
}


