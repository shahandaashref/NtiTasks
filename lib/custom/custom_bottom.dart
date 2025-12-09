import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customtextbottom({required String text,onPressed}) {
  return TextButton(

    onPressed: () {},
    child: InkWell(
      onTap: onPressed,
      child: Container(
        width: 300,
        height: 55,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 249, 249, 249),
          borderRadius: BorderRadius.circular(8.h)
        ),
        child: Text(text, style: TextStyle(fontSize: 30,color: Color(0xff1380A5),))),
    ),
  );
}