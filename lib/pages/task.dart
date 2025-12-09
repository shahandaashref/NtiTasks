import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 2, 91, 60),
        title: const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Profile',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 197, 182, 182)),
          ),
        ),
        actions: [
          const SizedBox(
            width: 10,
          ),
          IconButton(
              onPressed: () {},
              icon: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.edit,
                  size: 20,
                  color: Color.fromARGB(255, 114, 111, 111),
                ),
              ))
        ],
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                child: Image.network(
                  'https://img.freepik.com/premium-photo/beautiful-summer-landscape-mountains-generative-ai-illustrator_993599-27.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              const Positioned(
                bottom: 25,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://tse1.mm.bing.net/th/id/OIP.DETtorxBtKVA8U0rV2RYoAHaHa?rs=1&pid=ImgDetMain&o=7&rm=3'),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Aya Hussein',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Software Engineer",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[750],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Egypt, Cairo ",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[750],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Card(
            color: Color.fromARGB(255, 120, 137, 146),
            margin: EdgeInsets.symmetric(horizontal: 17, vertical: 10),
            child: Padding(
              padding: EdgeInsets.all(17),
              child: Row(
                children: [
                  Icon(Icons.email),
                  SizedBox(
                    width: 35,
                  ),
                  Text('ayahusseinmohamed@gmail.com'),
                ],
              ),
            ),
          ),
          Divider(
            thickness: 2,
            color: Colors.grey.shade300,
            height: 30,
            indent: 20,
            endIndent: 20,
          ),
          Expanded(
            child: ListView(
              children: [
                CustomListTilePart(
                  iconData: Icons.settings,
                  text: 'Account Settings',
                ),
                CustomListTilePart(
                  iconData: Icons.settings,
                  text: 'Account Settings',
                ),
                CustomListTilePart(
                  iconData: Icons.settings,
                  text: 'Account Settings',
                ),
                CustomListTilePart(
                  iconData: Icons.settings,
                  text: 'Account Settings',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}class CustomListTilePart extends StatelessWidget {
  final IconData iconData;
  final String text;
  CustomListTilePart({
    super.key,
    required this.iconData,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16, left: 10, right: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: ListTile(
        leading: Icon(iconData, color: Colors.black38),
        title: Text(text),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}