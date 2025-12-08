import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:learninnti/custom/custom_backgrond.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learninnti/custom/testing.dart';
import 'package:learninnti/pages/login_page.dart';
import 'package:learninnti/pages/taskinlec.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
         // locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          debugShowCheckedModeBanner: false,
          // 2. تفعيل دعم اللغات
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      
      // 3. تحديد اللغات المدعومة
      supportedLocales: [
        Locale('ar', 'AE'), // العربية
        Locale('en', ''),   // الإنجليزية
      ],
      
      // 4. إجبار التطبيق يبدأ بالعربي (Locale)
      locale: Locale('ar', 'AE'),
          home: Taskinlec(),
        );
      },
    );
  }
}
