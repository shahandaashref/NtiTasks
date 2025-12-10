import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studing/custom/custom_bottom.dart';
import 'package:studing/pages/AuthntiactionPage/widget/align_image.dart';
import 'package:studing/pages/AuthntiactionPage/widget/cuetom_text_field.dart';
import 'package:studing/pages/AuthntiactionPage/widget/social_media_icons.dart';

class RegisterScean extends StatelessWidget {
  const RegisterScean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "SIGNUP",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.sp),
                ),
                SizedBox(height: 20.h),

                SvgPicture.asset(
                  "assets/icons/signup.svg",
                  height: 200.h,
                ),
                SizedBox(height: 20.h),


                CustomTextField(
                  hintText: "Your Email",
                  prefixIcon: Icons.person,
                ),
                CustomTextField(
                  hintText: "Password",
                  prefixIcon: Icons.lock,
                  isPassword: true,
                  suffixIcon: Icon(Icons.visibility, color: Color(0xFF6F35A5)),
                ),
                
                SizedBox(height: 20.h),


                customtextbottom(
                  text: "SIGNUP",
                  onPressed: () {},
                ),

                SizedBox(height: 10.h),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an Account ? ", style: TextStyle(color: Color(0xFF6F35A5))),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Color(0xFF6F35A5),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Row(
                    children: [
                      Expanded(child: Divider(color: Color(0xFFD9D9D9))),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text("OR", style: TextStyle(color: Color(0xFF6F35A5), fontWeight: FontWeight.bold)),
                      ),
                      Expanded(child: Divider(color: Color(0xFFD9D9D9))),
                    ],
                  ),
                ),

                Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialMediaIcons(iconPath: "assets/icons/facebook.svg", onPressed: () {}),
              SocialMediaIcons(iconPath: "assets/icons/twitter.svg", onPressed: () {}),
              SocialMediaIcons(iconPath: "assets/icons/google-plus.svg", onPressed: () {}),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset('assets/images/login_bottom.png',width: 70,),
          ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}