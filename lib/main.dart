import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:split_app/presentation/homscreen/HomeScreen.dart';
import 'package:split_app/presentation/PhoneAuth.dart';
import 'package:split_app/presentation/pages/Calculator.dart';
import 'package:split_app/utils/StringValues.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ScreenUtilInit(builder: (BuildContext context, Widget? child) {
      return MaterialApp(
          title: StringValues.appName,
          initialRoute: Calculator.routeNamed,
          routes: {
            PhoneAuth.routeNamed: (BuildContext context) => const PhoneAuth(),
            HomeScreen.routeNamed: (BuildContext context) => const HomeScreen(),
            Calculator.routeNamed: (BuildContext context) => const Calculator(),
          },
          debugShowCheckedModeBanner: false);
    });
  }
}
