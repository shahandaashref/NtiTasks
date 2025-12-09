import 'package:flutter/material.dart';

Widget customCircleImage({required String image}) {
  return CircleAvatar(
    backgroundImage: NetworkImage(
      image,
    ),
  );
}
