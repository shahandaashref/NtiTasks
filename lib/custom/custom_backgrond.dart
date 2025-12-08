import 'package:flutter/material.dart';
import 'package:learninnti/custom/shap_one.dart';
import 'package:learninnti/custom/shape_three.dart';
import 'package:learninnti/custom/shape_two.dart';

class CustomBackgrond extends StatelessWidget {
  final bool issplash = false;
  const CustomBackgrond({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Positioned(top: 60, left: 0, child: ShapOne()),
          Positioned(top: 0, left: 60, child: ShapeTwo()),
          Positioned(top: 90, right: 0, child: ShapeThree()),
          Positioned(
            top: 40,
            right: 0,
            left: 0,
            child: Image.asset(
              'assets/images/logo.png',
              width: 150,
              height: 150,
            ),
          ),
        ],
      ),
    );
  }
}
