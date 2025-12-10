import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:studing/custom/custom_bottom.dart';
import 'package:studing/pages/AuthntiactionPage/register_scean.dart';
import 'package:studing/pages/AuthntiactionPage/widget/align_image.dart';
import 'package:studing/pages/AuthntiactionPage/widget/cuetom_text_field.dart';

class LoginScrean extends StatelessWidget {
  const LoginScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: SizedBox(
    child: SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          alignImage('assets/images/main_top.png'),
          Text("LOGIN", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          SizedBox(height: 20),
          SvgPicture.asset('assets/icons/login.svg'),
          //Image.asset('assets/images/profil.png'),
          SizedBox(height: 20),
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
          
          SizedBox(height: 20),
          
    
          customtextbottom(
            text: "LOGIN",
            onPressed: () {},
          ),
          
          SizedBox(height: 20),
          AskIfSignUp(),
          
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset('assets/images/login_bottom.png',width: 70,),
          ),
        ],
      ),
    ),
  ),
);
  }
}

class AskIfSignUp extends StatelessWidget {
  const AskIfSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an Account ? ", style: TextStyle(color: Color(0xFF6F35A5))),
              GestureDetector(
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScean()));
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Color(0xFF6F35A5),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          );
  }
}