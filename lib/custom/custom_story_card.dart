// 3. Story Card Widget
import 'package:flutter/material.dart';

class CustomStoryCard extends StatefulWidget {
  const CustomStoryCard({super.key});

  @override
  State<CustomStoryCard> createState() => _CustomStoryCardState();
}

class _CustomStoryCardState extends State<CustomStoryCard> {
  bool isFevorite = false;
  @override
  void initState() {
    super.initState();
    isFevorite=false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      width: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.grey.withValues(alpha: 0.1), blurRadius: 5),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.network(
              'https://cdn.pixabay.com/photo/2024/06/18/00/08/woman-8836743_960_720.jpg',
              fit: BoxFit.cover,
              height: 100,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Meeting',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.access_time, size: 14, color: Colors.grey),
                    SizedBox(width: 4),
                    Text(
                      '10:00 AM',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isFevorite = !isFevorite;
                        });
                      },
                      icon: isFevorite
                          ? Icon(Icons.favorite, color: Colors.redAccent)
                          : Icon(Icons.favorite_outline),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
