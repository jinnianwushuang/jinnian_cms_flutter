import 'package:flutter/material.dart';

import '../constants/color_constant.dart';

enum ActionButtonColor{ blue, white }

class ActionButton extends StatefulWidget {
  ActionButtonColor bgcolor;

  String label;

  double margin_top;

  Function _default_onTapFn = (){};

  final Function? onTapFn;

 ActionButton({
    Key? key,
    required this.label,
    required this.bgcolor,
      this.margin_top=20,
      this.onTapFn  ,

  }) : super(key: key) {

 }

  @override
  State<ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {

  var _blue_color = ColorConstant.blue;
  var _white_color = ColorConstant.white;
  late Color _text_color =   _white_color;
  late Color _bg_color =  _blue_color;


  void compute_color(){


    switch(widget.bgcolor){
      case ActionButtonColor.blue:
        _bg_color = _blue_color;
        _text_color = _white_color;
        break;
      case ActionButtonColor.white:
        _text_color = _blue_color;
        _bg_color =  _white_color;
        break;

      default:
        _bg_color =  _blue_color;
        _text_color =  _white_color;
        break;

    }
  }

  @override
  void initState() {
    compute_color();
  }





  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 26, right: 26),
      margin: EdgeInsets.only(top: widget.margin_top),
      child: GestureDetector(
        onTap: () {
          print("按钮点击");

           widget.onTapFn!();

        },
        child: Container(
          height: 44,
          padding: EdgeInsets.all(0),
          child: Align(
            alignment: Alignment.center,
            child: Text(
               widget.label,
              style: TextStyle(color:  _text_color),
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            // color: const Color(0x2F9AFF),
            color: _bg_color ,
          ),
        ),
      ),
    );
  }
}
