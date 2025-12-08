import 'package:flutter/material.dart';

Widget customBlueContainer({required Widget child,required double height }) {
  return Container(
    width: double.infinity,
    height: height,

    decoration: BoxDecoration(
      color: Color(0xff1380A5),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(35),
        topRight: Radius.circular(35),
      ),
    ),
    child: child
  );
}
