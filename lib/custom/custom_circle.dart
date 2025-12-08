import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget custom_circle(Color color) {
  return Container(
    width: 20.w,
    height: 20.h,
    decoration: BoxDecoration(shape: BoxShape.circle, color: color),
  );
}
