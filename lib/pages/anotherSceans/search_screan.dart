import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:studing/custom/custom_circle_image.dart';
import 'package:studing/custom/custom_story_card.dart';

class SearchScrean extends StatefulWidget {
  const SearchScrean({super.key});

  @override
  State<SearchScrean> createState() => _SearchScreanState();
}

class _SearchScreanState extends State<SearchScrean> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 240, 240, 240),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          ],
        ),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 63, 83, 119),
          title: Text('AppBar', style: TextStyle(color: Colors.white)),
          centerTitle: true,
        ),

        // PreferredSize(
        //   preferredSize: Size.fromHeight(80),
        //   child: Container(
        //     color: const Color.fromARGB(255, 63, 83, 119),
        //     child: Column(
        //       children: [Text('AppBar', style: TextStyle(color: Colors.white))],
        //     ),
        //   ),
        // ),
        drawer: MyDrawr(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomSearch(),
              CustomTapBar(),
              Text('CustomSrollView'),
              itemDetials(),
              pepolelistView(),
            ],
          ),
        ),
      ),
    );
  }

  Container pepolelistView() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: EdgeInsets.all(10),
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('listviaw.h'),
          SizedBox(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                10,
                (index) => customCircleImage(
                  image:
                      'https://tse4.mm.bing.net/th/id/OIP.JcF8-bCDB633trhd_1mPoAHaEK?pid=Api&P=0&h=220',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container itemDetials() {
    return Container(
      margin: EdgeInsets.all(20),
      height: 370,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text('CustomSrollView'),
          SizedBox(
            height: 350,
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(10, (index) {
                return CustomStoryCard();
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTapBar extends StatelessWidget {
  const CustomTapBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      // controller: TabController(length: 3, vsync: ),
      labelColor: Colors.blue[300],
      unselectedLabelColor: Colors.blue[300],
      indicatorColor: Colors.blue,
      tabs: [
        //Text('data'),
        Tab(text: "Featured"),
        Tab(text: "Categories"),
        Tab(text: "Trending"),
      ],
    );
  }
}

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 100,
      color: const Color.fromARGB(255, 63, 83, 119),
      padding: EdgeInsets.all(20),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Search',
          suffixIcon: Icon(Icons.search),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

class MyDrawr extends StatelessWidget {
  const MyDrawr({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:  const Color.fromARGB(255, 63, 83, 119),
      surfaceTintColor: Colors.white,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(color: const Color.fromARGB(255, 81, 125, 160)),
            child: customCircleImage(
              image:
                  'https://tse2.mm.bing.net/th?id=OIF.spzhAr4ciVkk%2f%2fzceDQUtA&pid=Api&P=0&h=220',
            ),
          ),
          SizedBox(
            height: 500,
            child: ListView(
              children:List.generate(3, (index)=>ListTile(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  textColor:Colors.white ,
                  leading: Icon(Icons.person,color: Colors.white,),
                  title: Text('Profile'),
                  trailing:Icon(Icons.arrow_forward_ios,color: Colors.white,),
                ),),
            ),
          ),
        ],
      ),
    );
  }
}
