import 'package:flutter/material.dart';

class widget_container extends StatelessWidget {
  const widget_container({
    Key? key,required this.Selected,required this.marginEnd,
  }) : super(key: key);
final bool Selected;
final double marginEnd;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 17,
      height: 4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          color:Selected ? Color(0xff6A90F2) :Colors.grey,
      ),
    );
  }
}