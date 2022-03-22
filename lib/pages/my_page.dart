import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:jinnian_cms_flutter/navigator/bottom_navigation.dart';
import 'package:jinnian_cms_flutter/widget/setting_drawer.dart';
import 'package:reactive_forms/reactive_forms.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final form = fb.group({
    'name': ['sss', Validators.required],
    'email': ['', Validators.required, Validators.email],
    'password': ['', Validators.required],
  });

  @override
  void initState() {}

  @override
  void didChangeDependencies() {}

  @override
  void dispose() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SizedBox(
          // height: 50,
          child: Text("我的"),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            tooltip: 'Open shopping cart',
            onPressed: () {
              // handle the press
            },
          ),
        ],
      ),
      drawer: SettingDrawer(),
      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 10,top: 50),
        child: Column(
          children: [
            // Row(children: [
            //   SizedBox(
            //     width: 50,
            //     height: 50,
            //     child: Image.asset('assets/images/k_icon.png'),
            //   ),
            // ]),
            ReactiveForm(
              formGroup: this.form,
              child: Column(
                children: <Widget>[
                  ReactiveTextField(

                    decoration:   const InputDecoration(

                      label: Text("名字" ),
                      border:   OutlineInputBorder(),

                    ),
                    formControlName: 'name',
                    textInputAction: TextInputAction.next,
                    onSubmitted: () => this.form.focus('email'),
                  ),
                  const SizedBox(height: 20,),
                  ReactiveTextField(

                    decoration: const InputDecoration(
                      labelText: '邮箱',
                      border:   OutlineInputBorder(),
                    ),
                    formControlName: 'email',
                    textInputAction: TextInputAction.next,
                    onSubmitted: () => this.form.focus('password'),
                  ),
                  const  SizedBox(height: 20,),
                  ReactiveTextField(

                    decoration: const InputDecoration(
                      labelText: '密码',
                      border:   OutlineInputBorder(),
                    ),
                    formControlName: 'password',
                    obscureText: true,


                  ),
                  const  SizedBox(height: 20,),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(
        currentIndex: 2,
      ),
    );
  }
}
