import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; 

class SocialMediaIcons extends StatelessWidget {
  final String iconPath;
  final VoidCallback onPressed;

  const SocialMediaIcons({
    super.key,
    required this.iconPath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Color(0xFFF1E6FF),
          ),
          shape: BoxShape.circle,
          color: Colors.white, 
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 3),
              blurRadius: 5,
            ),
          ],
        ),
        child: SvgPicture.asset(
          iconPath,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}