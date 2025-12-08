import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customTextFormFeild({
  TextEditingController? controller,
  bool ispassword=false,
  required String hint,
  required Icon icon
}) {
  return Padding(
    padding:EdgeInsets.symmetric(horizontal: 30.w,vertical: 10.h),
    child: TextFormField(
      
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(),
        prefixIcon: icon,
        filled: true,
        fillColor: Colors.grey[100],
        
      ),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'This field is required';
        }
      },
    ),
  );
}
