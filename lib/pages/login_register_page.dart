import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learninnti/custom/custom_backgrond.dart';
import 'package:learninnti/custom/custom_blue_container.dart';
import 'package:learninnti/custom/custom_bottom.dart';
import 'package:learninnti/custom/custom_nav_bar.dart';

class LoginRegisterPage extends StatelessWidget {
  const LoginRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      bottomNavigationBar: customNavBar(),
      body: Stack(
        children: [
          CustomBackgrond(),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: customBlueContainer(
              height: 350.h,
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Text(
                    'أهلا بك في مؤسسة المسار',
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                  SizedBox(height: 8.h),
                          
                  Text(
                    'للفئات الخاصه',
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                  SizedBox(height: 20),
                          
                  customtextbottom(text: 'تسجيل الدخول',onPressed: (){}),
                  SizedBox(height: 20),
                  customtextbottom(text:'إنشاء حساب',onPressed: (){}),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


