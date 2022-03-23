import 'package:flutter/material.dart';

class SmallLogo extends StatelessWidget {
  const SmallLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        width: 100,
        height: 100,
        child: Image.asset('assets/images/k_icon.png'),
      ),
    );
  }
}
