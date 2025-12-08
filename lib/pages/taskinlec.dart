import 'package:flutter/material.dart';

class Taskinlec extends StatelessWidget {
  const Taskinlec({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          //row for profile
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  CircleAvatar(
                    child: Image.asset('assets/images/logo.png', width: 100),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'shahanda',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Spacer(),
                  Icon(Icons.notifications, color: Colors.white),
                  SizedBox(width: 20),
                  Icon(Icons.badge_rounded, color: Colors.white),
                ],
              ),
            ),
          ),

          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.all(20.0),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: const Color.fromARGB(255, 249, 248, 248),
              ),
              child: Column(
                children: [
                  Container(
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
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(text: 'ليس لديك حساب ؟'),
                                  TextSpan(
                                    text: '   إنشاء حساب',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
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
                          child: CircleAvatar(
                                child: Image.asset(
                                  'assets/images/logo.png',
                                  width: 50,
                                ),
                              ),
                        ),
                         Align(
                          alignment: Alignment(0.3,.7),
                          child: CircleAvatar(
                                child: Image.asset(
                                  'assets/images/logo.png',
                                  width: 50,
                                ),
                              ),
                        ),
                         Align(
                          alignment: Alignment.topLeft,
                          child: CircleAvatar(
                                child: Image.asset(
                                  'assets/images/logo.png',
                                  width: 50,
                                ),
                              ),
                        ),
                        // SizedBox(
                        //   width: 100,
                        //   child: Wrap(
                        //     alignment:WrapAlignment.center,
                        //     //children: //Row(
                        //     children: [
                        //       CircleAvatar(
                        //         child: Image.asset(
                        //           'assets/images/logo.png',
                        //           width: 50,
                        //         ),
                        //       ),
                        //       CircleAvatar(
                        //         child: Image.asset(
                        //           'assets/images/logo.png',
                        //           width: 50,
                        //         ),
                        //       ),
                        //       CircleAvatar(
                        //         child: Image.asset(
                        //           'assets/images/logo.png',
                        //           width: 50,
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),

                        // )
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 180,
                    //width: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      // physics: ScrollPhysics(),
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.all(20),
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Image.asset('assets/images/logo.png', width: 100),
                              Text('hello'),
                              Row(
                                children: [
                                  Text('hello'),
                                  Icon(Icons.access_alarm),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
