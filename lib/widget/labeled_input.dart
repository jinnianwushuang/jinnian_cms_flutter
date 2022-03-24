import 'package:flutter/material.dart';

class LabeledInput extends StatefulWidget {
  String hintText;

  String  label;

  LabeledInput({
    Key? key,
    required this.label,
    required this.hintText,


  }) : super(key: key);

  @override
  State<LabeledInput> createState() => _LabeledInputState();
}

class _LabeledInputState extends State<LabeledInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 26, right: 26),
      child: TextField(
        // controller: field.textController,
        cursorColor: Theme.of(context).colorScheme.secondary,
        // style:
        // Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.white),
        onTap: () {},
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            contentPadding: const EdgeInsets.all(16),
            fillColor: Colors.white,
            filled: true,
            hintText:  widget.hintText,
            hintStyle: TextStyle(color: Colors.grey),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            floatingLabelAlignment: FloatingLabelAlignment.start,
            prefixIcon: Padding(
              padding: EdgeInsets.only(top: 14, left: 12, right: 6, bottom: 12),
              child: Container(
                child: Text(
                   widget.label,
                  style: TextStyle(color: Colors.black),
                ),
                padding: EdgeInsets.only(right: 6),
                decoration: BoxDecoration(
                  border: Border(
                      right: BorderSide(
                    color: Colors.grey,
                  )),
                ),
              ),
            )),
      ),
    );
  }
}
