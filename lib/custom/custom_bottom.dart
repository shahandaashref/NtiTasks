import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customtextbottom({required String text,onPressed,color=Colors.deepPurpleAccent,}) {
  return TextButton(

    onPressed: () {},
    child: InkWell(
      onTap: onPressed,
      child: Container(
        width: 300,
        height: 55,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.h)
        ),
        child: Text(text, style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 255, 255, 255),))),
    ),
  );
}