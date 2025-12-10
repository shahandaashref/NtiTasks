import 'package:flutter/material.dart';

Widget alignImage(String imagepath) {
  return Align(
    alignment: Alignment.topLeft,
    child: Image.asset(imagepath, width: 90),
  );
}
