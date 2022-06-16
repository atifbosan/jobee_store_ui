import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobee_store/screens/welcome/view/welcome_view.dart';

import '../constant/colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Jobee Store",
      theme: ThemeData(
          primaryColor: amberColor,
          fontFamily: 'lato',
          appBarTheme: AppBarTheme(
              backgroundColor: amberColor, foregroundColor: Colors.white)),
      home: WelcomeView(),
    );
  }
}
