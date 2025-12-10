import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studing/custom/custom_bottom.dart';
import 'package:studing/pages/AuthntiactionPage/login_screan.dart';
import 'package:studing/pages/AuthntiactionPage/register_scean.dart';
import 'package:studing/pages/AuthntiactionPage/widget/align_image.dart';

class LoginOrRegisterScrean extends StatelessWidget {
  const LoginOrRegisterScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            alignImage('assets/images/main_top.png'),
            Text(
              "WELCOME TO EDU",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.sp,
                fontFamily: "Cairo",
              ),
            ),
            Expanded(
              child: SvgPicture.asset(
                "assets/icons/chat.svg",
                height: 250.h,
                fit: BoxFit.contain,
              ),
            ),
      
      
            Column(
              children: [
                customtextbottom(
                  text: "LOGIN",
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScrean()));
                  },
                ),
                
                SizedBox(height: 15.h),
      
                customtextbottom(
                  text: "SIGNUP",
                  color: const Color.fromARGB(255, 175, 161, 212),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScean()));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}