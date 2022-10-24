import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fondom2/src/features/forget_password/prisentation/forget_password.dart';
import 'package:fondom2/src/features/login_screen/prisentation/login.dart';
import 'package:fondom2/src/features/music_player/music_player.dart';
import 'package:fondom2/src/features/profile/prisentation/screens/chat_room.dart';
import 'package:fondom2/src/util/style/them.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(348, 743),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(

          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: ThemeMode.system,
          home: child,
        );
      },
      child:  LoginScreen(),
    );
  }
}
