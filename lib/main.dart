import 'package:flutter/material.dart';
import 'package:flutter_practice_2911/screens/first_screen.dart';
import 'package:flutter_practice_2911/widgets/shared_prefs_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) =>  MaterialApp(
        

        debugShowCheckedModeBanner: false,
        home: SharedPreferencesWidget(child:  FirstScreen()),
        
      ),
    );
  }
}
