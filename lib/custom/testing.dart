import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learninnti/custom/custom_bottom.dart';

class Testing extends StatefulWidget {
  const Testing({super.key});

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  Offset _offset = Offset(20, 25);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Container(height: 120, color: Colors.blueAccent),
      ),
      body: Center(
        //child: SingleChildScrollView(
          //child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            // children: [
            //   ElevatedButton(
            //     onPressed: () {
            //       ScaffoldMessenger.of(context).showMaterialBanner(
            //         //materialBanner
            //         MaterialBanner(
            //           content: const Text('hello'),
            //           actions: [
            //             TextButton(
            //               onPressed: () {
            //                 ScaffoldMessenger.of(
            //                   context,
            //                 ).hideCurrentMaterialBanner();
            //               },
            //               child: const Text('Close'),
            //             ),
            //           ],
            //         ),
            //       );
            //     },
            //     child: Text('materialBanner'),
            //   ),
            //   Builder(
            //     builder: (context) {
            //       return ElevatedButton(
            //         onPressed: () {
            //           showBottomSheet(
            //             context: context,
            //             builder: (BuildContext context) {
            //               return SizedBox(
            //                 height: 100,
            //                 child: ElevatedButton(
            //                   onPressed: () {
            //                     Navigator.pop(context);
            //                   },
            //                   child: Text("close"),
            //                 ),
            //               );
            //             },
            //           );
            //         },
            //         child: Text('showBottomSheet'),
            //       );
            //     },
            //   ),
             child:  LayoutBuilder(
                builder: (context, constraints) {
                  return Stack(
                    children: [
                      Positioned(
                        left: _offset.dx,
                        top: _offset.dy,
                        child: LongPressDraggable(
                          feedback: Image.asset(
                            'assets/images/image.png',
                            height: 100,
                            width: 100,
                            color: Colors.amber,
                            colorBlendMode: BlendMode.colorBurn,
                          ),
                          child: Image.asset('assets/images/image.png'),
                          onDragEnd: (details) {
                            setState(() {
                              double adjustment =
                                  MediaQuery.of(context).size.height -
                                  constraints.maxHeight;
                              _offset = Offset(
                                details.offset.dx,
                                details.offset.dy-adjustment,
                              );
                            });
                          },
                        ),
                      ),
                    ],
                  );
                },
              ),
           // ],
          ),
      //  ),
     // ),
    );
  }
}
