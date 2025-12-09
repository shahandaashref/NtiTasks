import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Task3 extends StatelessWidget {
  const Task3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 241, 241),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 19, 70, 159),
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        actions: [Icon(Icons.account_circle_sharp, color: Colors.white)],
      ),

      body: Column(
        children: [
          ProfileImage(),
          Gap(20),
          Text("data"),
          Gap(20),
          Text("data"),
          Gap(20),
          Text("data"),
          UserEmail(),
          Gap(20),
          Divider(
            thickness: 1,
            height: 14,
            indent: 20,
            color: Colors.white,
            endIndent: 20,
          ),
          Gap(15),
          ProfileMenuTile(),
        ],
      ),
    );
  }
}
///////////////////////////////========================/////////////////////////
//////////////////////////////=========================///////////////////////

class ProfileMenuTile extends StatelessWidget {
  const ProfileMenuTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        itemCount: cardText.length,
        itemBuilder: (context, index) {
          return cardElement(text: cardText[index], icon: cardIcon[index]);
        },
      ),
    );
  }

  Card cardElement({required String text, required IconData icon}) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(text),
        trailing: Icon(Icons.arrow_forward_ios_outlined),
        style: ListTileStyle.drawer,
      ),
    );
  }
}

class UserEmail extends StatelessWidget {
  const UserEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(149, 71, 141, 176),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(children: [Icon(Icons.mail), Gap(20), Text("data")]),
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/OIP.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 2),
            image: DecorationImage(
              image: NetworkImage(
                'https://tse4.mm.bing.net/th/id/OIP.JcF8-bCDB633trhd_1mPoAHaEK?pid=Api&P=0&h=220',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}

List <IconData>cardIcon = [
  Icons.settings,
  Icons.notifications,
  Icons.notifications,
  Icons.notifications,
  Icons.notifications,
];
List <String>cardText = [
  'Setting',
  'Notifications',
  'Notifications',
  'Notifications',
  'Notifications',
];
