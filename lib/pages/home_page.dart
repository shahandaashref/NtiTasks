import 'package:flutter/material.dart';
import 'package:studing/custom/custom_circle_image.dart';
import 'package:studing/custom/custom_profile_header.dart';
import 'package:studing/custom/custom_story_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          //row for profile
          Expanded(flex: 1, child: CustomAppbarHomepage()),

          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.only(left: 16, top: 15, right: 16),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: const Color.fromARGB(255, 249, 248, 248),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      // margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueAccent,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                'find friend ,hallo,',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.fade,
                              ),

                              Row(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('find friend'),
                                  ),
                                  TextButton(
                                    onPressed: () {},

                                    style: TextButton.styleFrom(
                                      foregroundColor: Colors.white,
                                      backgroundColor: Colors.blueAccent,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 10,
                                      ),
                                      textStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    child: Text("find"),
                                  ),
                                  //                                 ElevatedButton(
                                  //                                   onPressed: () {},
                                  //                                   child: Text(' '),
                                  //                                 ),
                                ],
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: customCircleImage(
                              image:
                                  'https://cdn.pixabay.com/photo/2024/06/18/00/08/woman-8836743_960_720.jpg',
                            ),
                          ),
                          Align(
                            alignment: Alignment(0.3, .7),
                            child: customCircleImage(
                              image:
                                  'https://cdn.pixabay.com/photo/2024/06/18/00/08/woman-8836743_960_720.jpg',
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: customCircleImage(
                              image:
                                  'https://cdn.pixabay.com/photo/2024/06/18/00/08/woman-8836743_960_720.jpg',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text('find friend'),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 170,
                      //width: 120,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        // physics: ScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return CustomStoryCard();
                        },
                      ),
                    ),
                    Text('find friend'),

                    topRanked(),
                    topRanked(),
                    topRanked(),
                    topRanked(),
                    topRanked(),
                    SizedBox(
                      height: 500,
                      width: 300,
                      child: GridView.count(
                        crossAxisCount: 2,

                        children: List.generate(24, (index) {
                          return CustomStoryCard();
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

///////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////
Widget topRanked() {
  return Stack(
    clipBehavior: Clip.none,
    children: [
      Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 12),
        height: 80,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      Positioned(
        top: -1,
        right: 10,
        child: Image.network(
          'https://cdn.pixabay.com/photo/2024/06/18/00/08/woman-8836743_960_720.jpg',
          width: 30,
        ),
      ),
      Positioned(
        top: 0,
        bottom: 0,
        right: 0,
        left: 0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(child: Text('1')),
              SizedBox(width: 10),
              customCircleImage(
                image:
                    'https://cdn.pixabay.com/photo/2024/06/18/00/08/woman-8836743_960_720.jpg',
              ),
              SizedBox(width: 10),
              Text('shahanda'),
              Spacer(),
              Text('98%'),
            ],
          ),
        ),
      ),
    ],
  );
}
