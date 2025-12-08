import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Simulate fetching data
  Future<String> fetchData() async {
    await Future.delayed(const Duration(seconds: 2));
    return 'Data loaded!';
  }

  // Create a stream that emits numbers every second
  Stream<int> numberStream() async* {
    int count = 0;
    while (true) {
      await Future.delayed(const Duration(seconds: 1));
      yield count++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FutureBuilder & StreamBuilder')),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200.w, // Responsive width
              height: 100.h, // Responsive height
              padding: EdgeInsets.all(16.r), // Responsive padding
              child: Text(
                'Responsive Text',
                style: TextStyle(
                  fontSize: 18.sp, // Responsive font size
                ),
              ),
            ),

            // FutureBuilder Example
            const Text(
              'FutureBuilder:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.h),
            FutureBuilder<String>(
              future: fetchData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  return Text(snapshot.data ?? 'No data');
                }
              },
            ),
            SizedBox(height: 30.h),

            // StreamBuilder Example
            const Text(
              'StreamBuilder:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.h),

            StreamBuilder<int>(
              stream: numberStream(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  return Text('Count: ${snapshot.data ?? 0}');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
