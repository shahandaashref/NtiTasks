import 'package:flutter/material.dart';
import 'package:learninnti/custom/shap_one.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ShapOne(),
          Positioned(
            top: 0,
            right: 20,
            child: ShapOne()
            )
        ],
      ),
    );
  }
}