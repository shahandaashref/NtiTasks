import 'package:flutter/material.dart';
import 'package:studing/custom/custom_circle_image.dart';
import 'package:studing/pages/anotherSceans/home_page.dart';
import 'package:studing/pages/anotherSceans/profile_screen.dart';
import 'package:studing/pages/anotherSceans/search_screan.dart';

class HomePlaseHolder extends StatefulWidget {
  const HomePlaseHolder({super.key});

  @override
  State<HomePlaseHolder> createState() => _HomePlaseHolderState();
}

class _HomePlaseHolderState extends State<HomePlaseHolder> {
  late PageController _pageViewController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 63, 83, 119),
        title: Text('AppBar', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      drawer: MyDrawr(),
      body: PageView(
        controller: _pageViewController,
        children: [HomePage(), ProfileScreen(), SearchScrean()],
      ),

      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _currentPageIndex = value;
          });
          _pageViewController.jumpToPage(value);
        },
        selectedItemColor: const Color.fromARGB(255, 63, 83, 119),
        currentIndex: _currentPageIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
        ],
      ),
    );
  }
}

class MyDrawr extends StatelessWidget {
  const MyDrawr({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 63, 83, 119),
      surfaceTintColor: Colors.white,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 81, 125, 160),
            ),
            child: customCircleImage(
              image:
                  'https://tse2.mm.bing.net/th?id=OIF.spzhAr4ciVkk%2f%2fzceDQUtA&pid=Api&P=0&h=220',
            ),
          ),
          SizedBox(
            height: 500,
            child: ListView(
              children: List.generate(
                3,
                (index) => ListTile(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  textColor: Colors.white,
                  leading: Icon(Icons.person, color: Colors.white),
                  title: Text('Profile'),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
