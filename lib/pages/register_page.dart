import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learninnti/custom/custom_backgrond.dart';
import 'package:learninnti/custom/custom_blue_container.dart';
import 'package:learninnti/custom/custom_bottom.dart';
import 'package:learninnti/custom/custom_nav_bar.dart';
import 'package:learninnti/custom/custom_textformfeild.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
            child: SingleChildScrollView(
              child: customBlueContainer(
                height: 400.h,
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'أهلا بك نحن سعداء بعودتك',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    SizedBox(height: 8.h),
                            
                    Text(
                      ' من فضلك قم بتسجيل الدخول',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    SizedBox(height: 15.h),
                            
                    customTextFormFeild(hint:  ' رقم الهاتف',icon: Icon(Icons.person)),
                    customTextFormFeild(hint:  'كلمة المرور ',icon: Icon(Icons.lock_outlined)),
                    customTextFormFeild(hint:  'كلمة المرور ',icon: Icon(Icons.lock_outlined)),
                    customTextFormFeild(hint:  'كلمة المرور ',icon: Icon(Icons.lock_outlined)),
                    SizedBox(height: 15.h),
                    customtextbottom(text:  'إنشاء حساب',onPressed: (){}),
                    RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'ليس لديك حساب ؟' ),
                        TextSpan(text:'   إنشاء حساب' ,style: TextStyle( color: Colors.black)),
                      ]
                    )
                      ,
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
