// 1. Profile Header Widget
import 'package:flutter/material.dart';
import 'package:studing/custom/custom_circle_image.dart';

class CustomAppbarHomepage extends StatelessWidget {
  const CustomAppbarHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          customCircleImage(
            image:
                '''https://cdn.pixabay.com/photo/2024/06/18/00/08/woman-8836743_960_720.jpg''',
          ),
          const SizedBox(width: 15),
          const Text(
            'Shahanda',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.badge_rounded, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
