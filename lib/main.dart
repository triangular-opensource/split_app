import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:split_app/presentation/PhoneAuth.dart';
import 'package:split_app/utils/StringValues.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await Firebase.initializeApp();
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
          initialRoute: PhoneAuth.routeNamed,
          routes: {
            PhoneAuth.routeNamed: (BuildContext context) => const PhoneAuth(),
          },
          debugShowCheckedModeBanner: false);
    });
  }
}
